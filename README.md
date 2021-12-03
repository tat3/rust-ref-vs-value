# pass-by-reference vs pass-by-value

Rustの参照渡しと値渡しの動作を比較する

## 背景

C++では構造体やクラスを関数の引数に渡すとき、慣例として値渡しではなく参照渡しを使う。
これは不要なメモリのコピー(以下、単にコピー)を防ぐことによりパフォーマンスを落とさないためである。

一方、Rustにも記法として参照渡しと値渡しが用意されているが、機能の違いを所有権の移動の観点で説明した記事が多く、コピーの観点で比較したものは見つからなかった。

これは、コピーの特徴の一つである、コピー先の値を変えてもコピー元の値が変わらないという性質によるものと考えられる。
値渡しがコピーを伴ったとしても、所有権の移動が起きた後はその値を再度参照することができないため、開発者からはその性質が見えなくなるためである。
Rustにおいてこの性質に対応する機能はCopyトレイトであり、参照渡しか値渡しかという軸ではあまり話題になっていない。

しかし、パフォーマンスを重視したプログラミングではメモリのコピーの有無は重要な観点であるため、ここではRustがそれぞれの渡し方をどう扱うかを調べる。

(もちろん、RustはC++を十分参考にして実装されているという経緯から考えても、値渡しがメモリのコピーを伴う値渡しであることは明らかであるが。)

## 結論

Rustの値渡しはメモリのコピーを伴う値渡しである。

## 方法

上記を確認する方法として、

* Rustの仕様を確認する
* Rustのコンパイラが生成するLLVMのコードを読む
* Rustのコードを何らかの方法でC, C++のコードに変換する
* 非常に重い引数を関数に渡し、時間やメモリ使用量を測定する

を思いついたが、今回は2番目の方法を用い、特にLLVM-IRのコードを読んだ。
今回生成したLLVM-IRのコードは以下のようなコマンドから生成した。

```bash
$ rustc --emit=llvm-ir -C opt-level=0 value.rs
```

## 結果

呼び出し側

```diff
-; ref::main
+; value::main
 ; Function Attrs: nonlazybind uwtable
-define internal void @_ZN3ref4main17h1b15ee53243cf4a9E() unnamed_addr #1 {
+define internal void @_ZN5value4main17h77918e52cf53aab8E() unnamed_addr #1 {
 start:
-  %_2 = alloca i32, align 4
   %a = alloca { i64, i32 }, align 8
-  store i32 2, i32* %_2, align 4
   %0 = bitcast { i64, i32 }* %a to i64*
   store i64 1, i64* %0, align 8
   %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
-  %2 = load i32, i32* %_2, align 4
-  store i32 %2, i32* %1, align 8
-; call ref::show
-  call void @_ZN3ref4show17hd6ccc823db9cef3dE({ i64, i32 }* align 8 dereferenceable(16) %a)
+  store i32 2, i32* %1, align 8
+  %2 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 0
+  %_3.0 = load i64, i64* %2, align 8
+  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
+  %_3.1 = load i32, i32* %3, align 8
+; call value::show
+  call void @_ZN5value4show17h347b7cde27e428abE(i64 %_3.0, i32 %_3.1)
   br label %bb1
 
 bb1:                                              ; preds = %start
   ret void
 }
```

関数側

```diff
-; ref::show
+; value::show
 ; Function Attrs: nonlazybind uwtable
-define internal void @_ZN3ref4show17hd6ccc823db9cef3dE({ i64, i32 }* align 8 dereferenceable(16) %a) unnamed_addr #1 {
+define internal void @_ZN5value4show17h347b7cde27e428abE(i64 %0, i32 %1) unnamed_addr #1 {
 start:
   %_12 = alloca { i64*, i32* }, align 8
   %_11 = alloca [2 x { i8*, i64* }], align 8
   %_4 = alloca %"core::fmt::Arguments", align 8
-  %0 = bitcast { i64, i32 }* %a to i64*
-  %1 = load i64, i64* %0, align 8
-  %2 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 1)
-  %_2.0 = extractvalue { i64, i1 } %2, 0
-  %_2.1 = extractvalue { i64, i1 } %2, 1
-  %3 = call i1 @llvm.expect.i1(i1 %_2.1, i1 false)
-  br i1 %3, label %panic, label %bb1
+  %a = alloca { i64, i32 }, align 8
+  %2 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 0
+  store i64 %0, i64* %2, align 8
+  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
+  store i32 %1, i32* %3, align 8
+  %4 = bitcast { i64, i32 }* %a to i64*
+  %5 = load i64, i64* %4, align 8
+  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %5, i64 1)
+  %_2.0 = extractvalue { i64, i1 } %6, 0
+  %_2.1 = extractvalue { i64, i1 } %6, 1
+  %7 = call i1 @llvm.expect.i1(i1 %_2.1, i1 false)
+  br i1 %7, label %panic, label %bb1
```

### 参照渡し

* 呼び出し側では構造体へのポインタを関数に渡す
* 関数側では構造体へのポインタを受け取る
  - 使用の際は受け取ったポインタに対して`getelementptr`や`load`を使って値を取り出す

### 値渡し

* 呼び出し側では構造体のメンバを分解して関数に渡す
* 関数側では空の構造体を作成した後、メンバを構造体に埋め初期化する
  - 使用の際は初期化した構造体のポインタに対して`getelementptr`や`load`を使って値を取り出す

このことから、Rustの値渡しはコピーした構造体を作る実装となっていることが分かる。

## 参考: Copyトレイトとの比較

Copyトレイトを実装した構造体を値渡しする場合と、実装していない構造体を値渡しする場合も調べた。

Copyトレイトを実装した方がコードが増えているように見えるが、これはCopyトレイトを実装した方には呼び出し側の末尾に`println!()`を追加しているためである。
その分を除けば両者のコードは全て一致している。
このことから、Copyトレイトを実装した場合との違いは所有権が渡るような記述をした後もその変数を使えることであることが分かる。

```diff
-; value::main
+; value_copy::main
 ; Function Attrs: nonlazybind uwtable
-define internal void @_ZN5value4main17h77918e52cf53aab8E() unnamed_addr #1 {
+define internal void @_ZN10value_copy4main17hddef2085255af5ceE() unnamed_addr #1 {
 start:
+  %_13 = alloca i64*, align 8
+  %_12 = alloca [1 x { i8*, i64* }], align 8
+  %_5 = alloca %"core::fmt::Arguments", align 8
   %a = alloca { i64, i32 }, align 8
   %0 = bitcast { i64, i32 }* %a to i64*
   store i64 1, i64* %0, align 8
@@ -356,17 +360,43 @@
   %_3.0 = load i64, i64* %2, align 8
   %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
   %_3.1 = load i32, i32* %3, align 8
-; call value::show
-  call void @_ZN5value4show17h347b7cde27e428abE(i64 %_3.0, i32 %_3.1)
+; call value_copy::show
+  call void @_ZN10value_copy4show17h768f5fa7d78b73e7E(i64 %_3.0, i32 %_3.1)
   br label %bb1
 
 bb1:                                              ; preds = %start
+  %_14 = bitcast { i64, i32 }* %a to i64*
+  store i64* %_14, i64** %_13, align 8
+  %_args = load i64*, i64** %_13, align 8, !nonnull !3
+; call core::fmt::ArgumentV1::new
+  %4 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h33209734e41eb818E(i64* align 8 dereferenceable(8) %_args, i1 (i64*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h325330de061c31fdE")
+  %_16.0 = extractvalue { i8*, i64* } %4, 0
+  %_16.1 = extractvalue { i8*, i64* } %4, 1
+  br label %bb2
+
+bb2:                                              ; preds = %bb1
+  %5 = bitcast [1 x { i8*, i64* }]* %_12 to { i8*, i64* }*
+  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
+  store i8* %_16.0, i8** %6, align 8
+  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
+  store i64* %_16.1, i64** %7, align 8
+  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
+; call core::fmt::Arguments::new_v1
+  call void @_ZN4core3fmt9Arguments6new_v117hf056ed17233de47cE(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_5, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc5 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_9.0, i64 1)
+  br label %bb3
+
+bb3:                                              ; preds = %bb2
+; call std::io::stdio::_print
+  call void @_ZN3std2io5stdio6_print17h9410faf370112a65E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_5)
+  br label %bb4
+
+bb4:                                              ; preds = %bb3
   ret void
 }
```

## 今後の課題

今回は簡単のために、いくつかの仮定を置いている

* 最適化: 今回は最適化していないLLVMコードを検証したが、実際に動かすコードは`opt-level=3`である
* 構造体: 今回はシンプルな構造体を検証したが、内部に別のデータへの参照を持つ場合などより複雑なケースも調べる必要がある
* LLVM: 今回はLLVMのレイヤ以上を検証したが、実際はLLVMから実行ファイルに落ちるときの挙動にトリック(LLVM自体が持つ高度な最適化の有無、`call`命令の仕様)がある可能性がある
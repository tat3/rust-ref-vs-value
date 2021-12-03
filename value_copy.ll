; ModuleID = 'value_copy.39831b2b-cgu.0'
source_filename = "value_copy.39831b2b-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h52c1320ae669ce23E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcb9ce747fe28fc0fE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9be52b8c4c585d02E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9be52b8c4c585d02E" to i8*), [0 x i8] zeroinitializer }>, align 8
@alloc45 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc46 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/b416e3892d9526709f3a248f5ed3a43a970f795e/library/core/src/fmt/mod.rs" }>, align 1
@alloc47 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc46, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00k\01\00\00\0D\00\00\00" }>, align 8
@alloc11 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 1
@alloc14 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc48 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"value_copy.rs" }>, align 1
@alloc49 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [13 x i8] }>, <{ [13 x i8] }>* @alloc48, i32 0, i32 0, i32 0), [16 x i8] c"\0D\00\00\00\00\00\00\00\0D\00\00\00\05\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc13 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c" " }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hce849c0f4e355b49E(void ()* nonnull %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h910b06e845a6b13bE(void ()* nonnull %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17he7063fcb0d393391E()
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h1540cf623875e454E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  %0 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_5.0 = bitcast i64** %_8 to {}*
; call std::rt::lang_start_internal
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h571831ebdba142deE({}* nonnull align 1 %_5.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  store i64 %1, i64* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %v = load i64, i64* %_4, align 8
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9be52b8c4c585d02E"(i64** align 8 dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_3 = load void ()*, void ()** %0, align 8, !nonnull !3
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hce849c0f4e355b49E(void ()* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %1 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1c3059e503cb6036E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8b607e07082da534E(i8* align 1 dereferenceable(1) %self) unnamed_addr #2 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h33209734e41eb818E(i64* align 8 dereferenceable(8) %x, i1 (i64*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !3
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !3
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !3
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !3
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h993208ac0605c4c9E(i32* align 4 dereferenceable(4) %x, i1 (i32*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !3
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !3
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !3
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !3
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hf056ed17233de47cE(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %0, [0 x { [0 x i8]*, i64 }]* nonnull align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* nonnull align 8 %args.0, i64 %args.1) unnamed_addr #2 {
start:
  %_16 = alloca { i64*, i64 }, align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !4
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_16 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %6, align 8
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 1
  store i64 %pieces.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_16, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_16, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 0
  store i64* %10, i64** %13, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %16, align 8
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 1
  store i64 %args.1, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h50b51d19800453c0E([0 x i8]* nonnull align 1 bitcast (<{ [12 x i8] }>* @alloc45 to [0 x i8]*), i64 12, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc47 to %"core::panic::location::Location"*)) #7
  unreachable
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcb9ce747fe28fc0fE"(i64** %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17ha56c2751a0833d8aE(i64* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h910b06e845a6b13bE(void ()* nonnull %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17ha56c2751a0833d8aE(i64* nonnull %0) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9be52b8c4c585d02E"(i64** align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb1
  ret i32 %2
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h52c1320ae669ce23E"(i64** %_1) unnamed_addr #2 {
start:
  ret void
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17he7063fcb0d393391E() unnamed_addr #2 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !5
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1c3059e503cb6036E"() unnamed_addr #2 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h9b2f59ac1210bea2E"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h9b2f59ac1210bea2E"(i8 %0) unnamed_addr #2 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8b607e07082da534E(i8* align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; value_copy::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN10value_copy4main17hddef2085255af5ceE() unnamed_addr #1 {
start:
  %_13 = alloca i64*, align 8
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %a = alloca { i64, i32 }, align 8
  %0 = bitcast { i64, i32 }* %a to i64*
  store i64 1, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
  store i32 2, i32* %1, align 8
  %2 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 0
  %_3.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
  %_3.1 = load i32, i32* %3, align 8
; call value_copy::show
  call void @_ZN10value_copy4show17h768f5fa7d78b73e7E(i64 %_3.0, i32 %_3.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_14 = bitcast { i64, i32 }* %a to i64*
  store i64* %_14, i64** %_13, align 8
  %_args = load i64*, i64** %_13, align 8, !nonnull !3
; call core::fmt::ArgumentV1::new
  %4 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h33209734e41eb818E(i64* align 8 dereferenceable(8) %_args, i1 (i64*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h325330de061c31fdE")
  %_16.0 = extractvalue { i8*, i64* } %4, 0
  %_16.1 = extractvalue { i8*, i64* } %4, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast [1 x { i8*, i64* }]* %_12 to { i8*, i64* }*
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 0
  store i8* %_16.0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %5, i32 0, i32 1
  store i64* %_16.1, i64** %7, align 8
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hf056ed17233de47cE(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_5, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc5 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_9.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h9410faf370112a65E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_5)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; value_copy::show
; Function Attrs: nonlazybind uwtable
define internal void @_ZN10value_copy4show17h768f5fa7d78b73e7E(i64 %0, i32 %1) unnamed_addr #1 {
start:
  %_12 = alloca { i64*, i32* }, align 8
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %a = alloca { i64, i32 }, align 8
  %2 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
  store i32 %1, i32* %3, align 8
  %4 = bitcast { i64, i32 }* %a to i64*
  %5 = load i64, i64* %4, align 8
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %5, i64 1)
  %_2.0 = extractvalue { i64, i1 } %6, 0
  %_2.1 = extractvalue { i64, i1 } %6, 1
  %7 = call i1 @llvm.expect.i1(i1 %_2.1, i1 false)
  br i1 %7, label %panic, label %bb1

bb1:                                              ; preds = %start
  %8 = bitcast { i64, i32 }* %a to i64*
  store i64 %_2.0, i64* %8, align 8
  %_13 = bitcast { i64, i32 }* %a to i64*
  %_14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %a, i32 0, i32 1
  %9 = bitcast { i64*, i32* }* %_12 to i64**
  store i64* %_13, i64** %9, align 8
  %10 = getelementptr inbounds { i64*, i32* }, { i64*, i32* }* %_12, i32 0, i32 1
  store i32* %_14, i32** %10, align 8
  %11 = getelementptr inbounds { i64*, i32* }, { i64*, i32* }* %_12, i32 0, i32 0
  %_args.0 = load i64*, i64** %11, align 8, !nonnull !3
  %12 = getelementptr inbounds { i64*, i32* }, { i64*, i32* }* %_12, i32 0, i32 1
  %_args.1 = load i32*, i32** %12, align 8, !nonnull !3
; call core::fmt::ArgumentV1::new
  %13 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h33209734e41eb818E(i64* align 8 dereferenceable(8) %_args.0, i1 (i64*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h325330de061c31fdE")
  %_16.0 = extractvalue { i8*, i64* } %13, 0
  %_16.1 = extractvalue { i8*, i64* } %13, 1
  br label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h50b51d19800453c0E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc49 to %"core::panic::location::Location"*)) #7
  unreachable

bb2:                                              ; preds = %bb1
; call core::fmt::ArgumentV1::new
  %14 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h993208ac0605c4c9E(i32* align 4 dereferenceable(4) %_args.1, i1 (i32*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h41290ab1b0057a2bE")
  %_19.0 = extractvalue { i8*, i64* } %14, 0
  %_19.1 = extractvalue { i8*, i64* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = bitcast [2 x { i8*, i64* }]* %_11 to { i8*, i64* }*
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %15, i32 0, i32 0
  store i8* %_16.0, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %15, i32 0, i32 1
  store i64* %_16.1, i64** %17, align 8
  %18 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i32 0, i32 1
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 0
  store i8* %_19.0, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 1
  store i64* %_19.1, i64** %20, align 8
  %_8.0 = bitcast [2 x { i8*, i64* }]* %_11 to [0 x { i8*, i64* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hf056ed17233de47cE(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_4, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc12 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* nonnull align 8 %_8.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h9410faf370112a65E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_4)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h571831ebdba142deE({}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h50b51d19800453c0E([0 x i8]* nonnull align 1, i64, %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #3

; core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h325330de061c31fdE"(i64* align 8 dereferenceable(8), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h9410faf370112a65E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h41290ab1b0057a2bE"(i32* align 4 dereferenceable(4), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #6 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h1540cf623875e454E(void ()* @_ZN10value_copy4main17hddef2085255af5ceE, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nonlazybind "target-cpu"="x86-64" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i8 0, i8 2}
!5 = !{i32 3175851}

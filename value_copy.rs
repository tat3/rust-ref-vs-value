fn main() {
    let a = AAAAA {
        a: 1,
        b: BBBBB {
            c: 2,
        },
    };
    show(a);
    println!("{}", a.a);
}

fn show(mut a: AAAAA) {
    a.a += 1;
    println!("{} {}", a.a, a.b.c);
}

#[derive(Copy, Clone)]
struct AAAAA {
    a: i64,
    b: BBBBB,
}

#[derive(Copy, Clone)]
struct BBBBB {
    c: i32,
}
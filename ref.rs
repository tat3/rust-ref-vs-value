fn main() {
    let mut a = AAAAA {
        a: 1,
        b: BBBBB {
            c: 2,
        },
    };
    show(&mut a);
}

fn show(a: &mut AAAAA) {
    a.a += 1;
    println!("{} {}", a.a, a.b.c);
}

struct AAAAA {
    a: i64,
    b: BBBBB,
}

struct BBBBB {
    c: i32,
}
use std::io;

fn read_and_parse_input() -> (i32, i32, i32) {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let values: Vec<&str> = input.trim().split(' ').collect();

    let a: i32 = match values[0].parse::<i32>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing values");
            -1
        }
    };

    let b: i32 = match values[1].parse::<i32>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing values");
            -1
        }
    };

    let c: i32 = match values[2].parse::<i32>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing values");
            -1
        }
    };

    (a, b, c)
}

fn maior_ab(a: i32, b: i32) -> i32 {
    (a + b + (a - b).abs()) / (2)
}

fn main() {

    let (a, b, c) = read_and_parse_input();

    let maior = maior_ab(a, b);
    let maior = maior_ab(maior, c);

    println!("{} eh o maior", maior);
}
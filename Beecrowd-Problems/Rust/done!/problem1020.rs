use std::io;

fn read_input() -> String {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    input
}

fn parse_input(input: String) -> i32 {
    let value = input.trim().parse::<i32>().unwrap();
    value
}

fn main() {
    let str_age = read_input();
    let age: i32 = parse_input(str_age);

    let years =  age / 365;
    let months = (age % 365) / 30;
    let days = (age % 365) % 30;

    println!("{} ano(s)", years);
    println!("{} mes(es)", months);
    println!("{} dia(s)", days);
}
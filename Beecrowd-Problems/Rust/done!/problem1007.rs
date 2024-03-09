use std::io;

fn read_user_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line.");
    let num: i32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Enter a valid number.");
            read_user_input()
        }
    };
    num
}

fn main() {
    let a: i32 = read_user_input();
    let b: i32 = read_user_input();
    let c: i32 = read_user_input();
    let d: i32 = read_user_input();
    let prod: i32 = a * b - c * d;
    println!("DIFERENCA = {}", prod);
}
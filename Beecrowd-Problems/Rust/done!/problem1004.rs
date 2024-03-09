use std::io;

fn read_integer_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let num: i32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while parsing input.");
            println!("Enter an integer number.");
            return read_integer_input();
        }
    };
    num
}

fn main() {

    let x: i32 = read_integer_input();
    let y: i32 = read_integer_input();
    let product: i32 = x * y;
    println!("PROD = {}", product);
}
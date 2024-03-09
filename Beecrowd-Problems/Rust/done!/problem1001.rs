use std::io;

fn read_number_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input)
        .expect("Failed to read line");
    let number = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input! Enter a valid number.");
            return read_number_input();
        }
    };
    number
}

fn main() {

    let a: i32 = read_number_input();
    let b: i32 = read_number_input();
    let x: i32 = a + b;
    println!("X = {}", x);
    
}
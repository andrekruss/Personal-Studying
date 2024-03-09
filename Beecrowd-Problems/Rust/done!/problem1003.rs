use std::io;

fn read_integer_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let num: i32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while parsing input.");
            return read_integer_input();
        }
    };
    num
}

fn main(){
    let a: i32 = read_integer_input();
    let b: i32 = read_integer_input();
    let soma: i32 = a + b;
    println!("SOMA = {}", soma);
}
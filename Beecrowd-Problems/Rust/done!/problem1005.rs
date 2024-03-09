use std::io;

fn read_user_input() -> f64 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line.");
    let num: f64 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Input must be a floating point value.");
            return read_user_input();
        }
    };
    num
}

fn main() {
    const WEIGHT_A: f64 = 3.5;
    const WEIGHT_B: f64 = 7.5;
    let a: f64 = read_user_input();
    let b: f64 = read_user_input();
    let media: f64 = ((WEIGHT_A * a) + (WEIGHT_B * b)) / (WEIGHT_A + WEIGHT_B);
    println!("MEDIA = {:.5}", media);
}
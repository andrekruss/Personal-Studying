use std::io;

fn read_user_input() -> f64 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let num: f64 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Input must be a number");
            read_user_input()
        }
    };
    num
}

fn main() {
    const WEIGHT_A: f64 = 2f64;
    const WEIGHT_B: f64 = 3f64;
    const WEIGHT_C: f64 = 5f64;
    let a: f64 = read_user_input();
    let b: f64 = read_user_input();
    let c: f64 = read_user_input();

    let average: f64 = ((a * WEIGHT_A) + (b * WEIGHT_B) + (c * WEIGHT_C)) 
    / (WEIGHT_A + WEIGHT_B + WEIGHT_C);

    println!("MEDIA = {:.1}", average);
}
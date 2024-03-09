use std::io;

fn read_radius_input() -> f64 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).
    expect("Failed to read input.");
    let num: f64 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while type casting. Enter a valid number");
            return read_radius_input();
        }
    }; 
    num
}

fn main() {
    const PI: f64 = 3.14159;
    let radius: f64 = read_radius_input();
    let area: f64 = PI * radius * radius;
    println!("A={:.4}", area);
}
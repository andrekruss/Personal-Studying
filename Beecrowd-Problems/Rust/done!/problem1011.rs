use std::io;

fn read_and_parse_input() -> f64 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let value: f64 = match input.trim().parse::<f64>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing input.");
            -1f64
        }
    };
    value
}

fn main() {
    let pi: f64 = 3.14159;
    let radius: f64 = read_and_parse_input();
    let volume: f64 = (4f64 / 3f64) * pi * radius * radius * radius;
    println!("VOLUME = {:.3}", volume);
}
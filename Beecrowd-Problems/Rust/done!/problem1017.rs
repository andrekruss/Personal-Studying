use std::io;

fn read_and_parse_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let value: i32 = input.trim().parse::<i32>().unwrap();
    value
}

fn main() {

    let fuel_rate: i32 = 12; // km/l
    let spent_time: i32 = read_and_parse_input(); // h
    let average_speed: i32 = read_and_parse_input(); // km/h
    let distance: i32 = average_speed * spent_time; // km
    let fuel_consumption: f64 = (distance as f64) / (fuel_rate as f64); // l
    println!("{:.3}", fuel_consumption);
}
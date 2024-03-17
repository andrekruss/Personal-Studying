use std::io;

fn read_input() -> String {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    input
}

fn main() {

    let distance: i32 = match read_input().trim().parse::<i32>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing distance");
            -1
        }
    };

    let spent_fuel: f64 = match read_input().trim().parse::<f64>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing spent fuel");
            -1f64
        }
    };

    let average_consumption: f64 = (distance as f64) / (spent_fuel);

    println!("{:.3} km/l", average_consumption);
}
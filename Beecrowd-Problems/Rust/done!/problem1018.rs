use std::io;
use std::num;
use std::process;

fn read_input() -> Result<String, io::Error> {
    let mut raw_input = String::new();
    io::stdin().read_line(&mut raw_input)?;
    Ok(raw_input)
}

fn parse_input(raw_input: String) -> Result<i32, num::ParseIntError> {
    let value = match raw_input.trim().parse::<i32>() {
        Ok(num) => num,
        Err(err) => return Err(err),
    };
    Ok(value)
}

fn main() {
    let raw_input = match read_input() {
        Ok(input) => input,
        Err(_err) => {
            eprintln!("Error while reading input.");
            process::exit(1);
        }
    };
    let value: i32 = match parse_input(raw_input) {
        Ok(num) => num,
        Err(_err) => {
            println!("Error while parsing input.");
            process::exit(1);
        }
    };

    println!("{}", value);
    
    let num_100: i32 = value / 100;
    let value: i32 = value - num_100 * 100;
    let num_50: i32 = value / 50;
    let value: i32 = value - num_50 * 50;
    let num_20: i32 = value / 20;
    let value: i32 = value - num_20 * 20;
    let num_10: i32 = value / 10;
    let value: i32 = value - num_10 * 10;
    let num_5: i32 = value / 5;
    let value: i32 = value - num_5 * 5;
    let num_2: i32 = value / 2;
    let value: i32 = value - num_2 * 2;
    let num_1: i32 = value;
    
    println!("{} nota(s) de R$ 100,00", num_100);
    println!("{} nota(s) de R$ 50,00", num_50);
    println!("{} nota(s) de R$ 20,00", num_20);
    println!("{} nota(s) de R$ 10,00", num_10);
    println!("{} nota(s) de R$ 5,00", num_5);
    println!("{} nota(s) de R$ 2,00", num_2);
    println!("{} nota(s) de R$ 1,00", num_1);
    
}
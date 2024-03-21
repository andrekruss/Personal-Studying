use std::io;
use std::num;
use std::process;

fn read_input() -> Result<String, io::Error> {
    let mut raw_input = String::new();
    io::stdin().read_line(&mut raw_input)?;
    Ok(raw_input)
}

fn parse_input(raw_input: String) -> Result<i32, num::ParseIntError> {
    let value = raw_input.trim().parse::<i32>()?;
    Ok(value)
}

fn main() {
    let raw_input = match read_input(){
        Ok(input) => input,
        Err(_) => {
            eprintln!("Error while reading input");
            process::exit(1);
        }
    };
    let time = match parse_input(raw_input) {
        Ok(value) => value,
        Err(_) => {
            eprintln!("Error while parsing input");
            process::exit(1);
        }
    };

    let hours = time / 3600;
    let time = time - (hours * 3600);
    let minutes = time / 60;
    let time = time - (minutes * 60);
    let seconds = time;

    println!("{}:{}:{}", hours, minutes, seconds);
}
use std::io;

fn read_and_parse_input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let value: i32 = input.trim().parse::<i32>().unwrap();
    value
}

fn main() {

    let distance: i32 = read_and_parse_input();

    // 1km in 2 min 
    // using proportion: time = (2 * distance) / 1
    let time: i32 = 2 * distance;
    println!("{} minutos", time);
}
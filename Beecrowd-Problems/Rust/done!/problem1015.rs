use std::io;

struct Point {
    x: f64,
    y: f64,
}

fn read_and_parse_input() -> Point {

    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let values: Vec<&str> = input.trim().split(' ').collect();

    let x: f64 = values[0].parse::<f64>().unwrap();
    let y: f64 = values[1].parse::<f64>().unwrap();

    let p = Point {
        x: x,
        y: y,
    };
    p
}

fn distance(p2: Point, p1: Point) -> f64 {
    (((p2.x - p1.x).powf(2f64)) + ((p2.y - p1.y).powf(2f64))).sqrt()
}

fn main() {

    let p1: Point = read_and_parse_input();
    let p2: Point = read_and_parse_input();
    let dist: f64 = distance(p2, p1);
    println!("{:.4}", dist);
}
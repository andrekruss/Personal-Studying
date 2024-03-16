use std::io;

fn read_and_parse_input() -> (f64, f64, f64) {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let values: Vec<&str> = input.trim().split(' ').collect();

    let a: f64 = match values[0].parse::<f64>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing value.");
            -1f64
        }
    };

    let b: f64 = match values[1].parse::<f64>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing value.");
            -1f64
        }
    };

    let c: f64 = match values[2].parse::<f64>() {
        Ok(num) => num,
        Err(_) => {
            eprintln!("Error while parsing value.");
            -1f64
        }
    };

    (a, b, c)
}

fn main() {

    let pi: f64 = 3.14159;
    let (a, b, c) = read_and_parse_input();

    let triangle_area: f64 = (a * c) / (2f64);
    let circle_area: f64 = pi * c * c;
    let trapezium_area: f64 = ((a + b) * c) / (2f64);
    let square_area: f64 = b * b;
    let rectangle_area: f64 = a * b;

    println!("TRIANGULO: {:.3}", triangle_area);
    println!("CIRCULO: {:.3}", circle_area);
    println!("TRAPEZIO: {:.3}", trapezium_area);
    println!("QUADRADO: {:.3}", square_area);
    println!("RETANGULO: {:.3}", rectangle_area);
}
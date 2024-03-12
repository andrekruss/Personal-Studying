use std::io;

struct OrderItem {
    code: i32,
    quantity: i32,
    unit_price: f64,
}

impl OrderItem {
    fn amount_to_be_paid(&self) -> f64 {
        (self.quantity as f64) * (self.unit_price)
    }
}

fn read_and_parse_input() -> OrderItem {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let values: Vec<&str> = input.trim().split(' ').collect();

    let code: i32 = match values[0].parse::<i32>() {
        Ok(num) => num,
        Err(err) => {
            eprintln!("Error while parsing code.");
            -1
        }
    };
    let quantity: i32 = match values[1].parse::<i32>() {
        Ok(num) => num,
        Err(err) => {
            eprintln!("Error while parsing quantity.");
            -1
        }
    };
    let unit_price: f64 = match values[2].parse::<f64>() {
        Ok(num) => num,
        Err(err) => {
            eprintln!("Error while parsing unit price.");
            -1f64
        }
    };

    let order_item = OrderItem {
        code: code,
        quantity: quantity,
        unit_price: unit_price,
    };

    order_item
}

fn main() {

    let order_item_1 = read_and_parse_input();
    let order_item_2 = read_and_parse_input();
    let total: f64 = order_item_1.amount_to_be_paid() + order_item_2.amount_to_be_paid();
    println!("VALOR A PAGAR: R$ {:.2}", total);
}
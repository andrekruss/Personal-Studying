use std::io;

struct Seller {
    name: String,
    fixed_salary: f64,
    total_sales: f64,
}

impl Seller {
    fn total_salary(&self) -> f64{
        self.fixed_salary + (0.15f64 * self.total_sales)
    }
}

fn read_input() -> Result<String, io::Error> {
    let mut input = String::new();
    match io::stdin().read_line(&mut input) {
        Ok(_) => Ok(input.trim().to_string()),
        Err(error) => {
            eprintln!("Error while reading input");
            Err(error)
        }
    }
}

fn main() {
    let name = match read_input() {
        Ok(input) => input,
        Err(_) => {
            eprintln!("Error while reading input.");
            return;
        } 
    };

    let fixed_salary = match read_input().unwrap().parse::<f64>() {
        Ok(value) => value,
        Err(_) => {
            eprintln!("Error while reading fixed salary.");
            return;
        }
    };

    let total_sales = match read_input().unwrap().parse::<f64>() {
        Ok(value) => value,
        Err(_) => {
            eprintln!("Error while reading total sales.");
            return;
        }
    };

    let seller = Seller {
        name: name,
        fixed_salary: fixed_salary,
        total_sales: total_sales,
    };

    println!("TOTAL = R$ {:.2}", seller.total_salary());
}
use std::io;

struct Employee {
    id: i32,
    worked_hours: i32,
    salary_per_hour: f64,
}

impl Employee {
    fn total_salary(&self) -> f64 {
        (self.salary_per_hour) * (self.worked_hours as f64)
    }
}

fn main() {
    let mut input_id = String::new();
    let mut input_worked_hours = String::new();
    let mut input_salary_per_hour = String::new();

    io::stdin().read_line(&mut input_id)
        .expect("Failed to read id");
    io::stdin().read_line(&mut input_worked_hours)
        .expect("Failed to read worked_hours");
    io::stdin().read_line(&mut input_salary_per_hour)
        .expect("Failed to read salary_per_hour");

    let id: i32 = match input_id.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while parsing id.");
            -1
        }
    };

    let worked_hours: i32 = match input_worked_hours.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while parsing worked hours.");
            -1
        }
    };

    let salary_per_hour: f64 = match input_salary_per_hour.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Error while parsing amount per hour.");
            -1f64
        }
    };

    let employee = Employee {
        id: id,
        worked_hours: worked_hours,
        salary_per_hour: salary_per_hour,
    };

    let total_salary = employee.total_salary();

    println!("NUMBER = {}", employee.id);
    println!("SALARY = U$ {:.2}", total_salary);
}
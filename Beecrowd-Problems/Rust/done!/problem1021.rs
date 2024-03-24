use std::io;

fn read_input() -> String {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    input
}

fn parse_input(raw_input: String) -> (i32, i32) {
    let values: Vec<&str> = raw_input.trim().split('.').collect();
    let notes: i32 = values[0].parse::<i32>().unwrap();
    let coins: i32 = values[1].parse::<i32>().unwrap();
    (notes, coins)
}

fn main() {

    let input: String = read_input();
    let (notes, coins) = parse_input(input);

    let n100 = notes / 100;
    let remaining_notes = notes % 100;
    let n50 = remaining_notes / 50;
    let remaining_notes = remaining_notes - n50 * 50;
    let n20 = remaining_notes / 20;
    let remaining_notes = remaining_notes - n20 * 20;
    let n10 = remaining_notes / 10;
    let remaining_notes = remaining_notes - n10 * 10;
    let n5 = remaining_notes / 5;
    let remaining_notes = remaining_notes - n5 * 5;
    let n2 = remaining_notes / 2;
    let remaining_notes = remaining_notes - n2 * 2;

    let c100 = remaining_notes;
    let c50 = coins / 50;
    let remaining_coins = coins % 50;
    let c25 = remaining_coins / 25;
    let remaining_coins = remaining_coins - c25 * 25;
    let c10 = remaining_coins / 10;
    let remaining_coins = remaining_coins - c10 * 10;
    let c5 = remaining_coins / 5;
    let remaining_coins = remaining_coins - c5 * 5;
    let c1 = remaining_coins;


    println!("NOTAS:");
    println!("{} nota(s) de R$ 100.00", n100);
    println!("{} nota(s) de R$ 50.00", n50);
    println!("{} nota(s) de R$ 20.00", n20);
    println!("{} nota(s) de R$ 10.00", n10);
    println!("{} nota(s) de R$ 5.00", n5);
    println!("{} nota(s) de R$ 2.00", n2);

    println!("MOEDAS:");
    println!("{} moeda(s) de R$ 1.00", c100);
    println!("{} moeda(s) de R$ 0.50", c50);
    println!("{} moeda(s) de R$ 0.25", c25);
    println!("{} moeda(s) de R$ 0.10", c10);
    println!("{} moeda(s) de R$ 0.05", c5);
    println!("{} moeda(s) de R$ 0.01", c1);
}
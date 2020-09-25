use std::io;
use std::process;
use std::env;

fn print_step(line: &String) -> i32 {
  let words: Vec<_> = line.split(':').collect();
  let count: i32 = words[0].trim().parse().unwrap();
  let mut sum: i32 = 0;
  for n in 0..count {
    for _m in 0..n+1 {
      print!("{}", words[1].trim());
      sum = sum + words[1].trim().len() as i32;
    }
    println!("");
  }
  return sum;
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() >= 2 {
    process::exit(print_step(&args[1]));
  } else {
    let mut line = String::new();
    io::stdin().read_line(&mut line)
      .expect("Failed");
    process::exit(print_step(&line));
  }
}

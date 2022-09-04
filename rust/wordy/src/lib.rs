use regex::{Match, Regex};

pub struct WordProblem;

const PLUS: &str = "plus";
const MINUS: &str = "minus";
const DIVIDE: &str = "divided by";
const MULT: &str = "multiplied by";
const EXP: &str = "raised to the";

fn math(left: i32, right: i32, op: &str) -> Option<i32> {
    match op {
        PLUS => Some(left + right),
        MINUS => Some(left - right),
        MULT => Some(left * right),
        DIVIDE => Some(left / right),
        EXP => Some(left.pow(right as u32)),
        _ => None,
    }
}

fn parse_int(input: &str) -> i32 {
    input.parse::<i32>().unwrap()
}

fn math_full(left: i32, op: Option<Match>, right: Option<Match>) -> i32 {
    let r = parse_int(right.unwrap().as_str());
    let op1 = op.unwrap().as_str();
    math(left, r, op1).unwrap()
}

pub fn answer(command: &str) -> Option<i32> {
    let supported_ops = format!("{}|{}|{}|{}", PLUS, MINUS, DIVIDE, MULT,);
    let prefix = Regex::new(
        format!(
            "{}{}{}",
            r"^What\s+is\s+(-?\d+)\s*((?:(?:", supported_ops, r")\s+(?:-?\d+)\s*)*)\s*\?"
        )
        .as_str(),
    )
    .unwrap();
    let op_matches = Regex::new(format!("({}){}", supported_ops, r"\s+(-?\d+)").as_str()).unwrap();

    match prefix.captures(command) {
        Some(grps) => {
            let strs: Vec<_> = grps.iter().skip(1).map(|x| x.unwrap().as_str()).collect();
            let tot = parse_int(strs[0]);
            let rest = strs[1];

            Some(
                op_matches
                    .captures_iter(rest)
                    .fold(tot, |t, m| math_full(t, m.get(1), m.get(2))),
            )
        }
        _ => None,
    }
}

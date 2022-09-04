#[derive(Debug)]
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}

pub fn do_op(op: &CalculatorInput, stk: &mut Vec<i32>) -> Option<i32> {
    match stk.pop() {
        None => None,
        Some(n1) => match stk.pop() {
            None => None,
            Some(n2) => match op {
                CalculatorInput::Add => Some(n2 + n1),
                CalculatorInput::Subtract => Some(n2 - n1),
                CalculatorInput::Multiply => Some(n2 * n1),
                CalculatorInput::Divide => Some(n2 / n1),
                CalculatorInput::Value(_v) => None,
            },
        },
    }
}

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    let mut stk = vec![];

    for it in inputs {
        match it {
            CalculatorInput::Value(v) => stk.push(*v),
            _ => match do_op(it, &mut stk) {
                Some(r) => stk.push(r),
                None => return None,
            },
        }
    }

    if stk.len() > 1 {
        None
    } else {
        stk.pop()
    }
}

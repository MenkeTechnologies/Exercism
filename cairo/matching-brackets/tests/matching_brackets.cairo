use matching_brackets::is_paired;

#[test]
fn paired_square_brackets() {
    let value = "[]";
    assert!(is_paired(value));
}

#[test]

fn empty_string() {
    let value = "";
    assert!(is_paired(value));
}

#[test]

fn unpaired_brackets() {
    let value = "[[";
    assert!(!is_paired(value));
}

#[test]

fn wrong_ordered_brackets() {
    let value = "}{";
    assert!(!is_paired(value));
}

#[test]

fn wrong_closing_bracket() {
    let value = "{]";
    assert!(!is_paired(value));
}

#[test]

fn paired_with_whitespace() {
    let value = "{ }";
    assert!(is_paired(value));
}

#[test]

fn partially_paired_brackets() {
    let value = "{[])";
    assert!(!is_paired(value));
}

#[test]

fn simple_nested_brackets() {
    let value = "{[]}";
    assert!(is_paired(value));
}

#[test]

fn several_paired_brackets() {
    let value = "{}[]";
    assert!(is_paired(value));
}

#[test]

fn paired_and_nested_brackets() {
    let value = "([{}({}[])])";
    assert!(is_paired(value));
}

#[test]

fn unopened_closing_brackets() {
    let value = "{[)][]}";
    assert!(!is_paired(value));
}

#[test]

fn unpaired_and_nested_brackets() {
    let value = "([{])";
    assert!(!is_paired(value));
}

#[test]

fn paired_and_wrong_nested_brackets() {
    let value = "[({]})";
    assert!(!is_paired(value));
}

#[test]

fn paired_and_wrong_nested_brackets_but_innermost_are_correct() {
    let value = "[({}])";
    assert!(!is_paired(value));
}

#[test]

fn paired_and_incomplete_brackets() {
    let value = "{}[";
    assert!(!is_paired(value));
}

#[test]

fn too_many_closing_brackets() {
    let value = "[]]";
    assert!(!is_paired(value));
}

#[test]

fn early_unexpected_brackets() {
    let value = ")()";
    assert!(!is_paired(value));
}

#[test]

fn early_mismatched_brackets() {
    let value = "{)()";
    assert!(!is_paired(value));
}

#[test]

fn math_expression() {
    let value = "(((185 + 223.85) * 15) - 543)/2";
    assert!(is_paired(value));
}

#[test]

fn complex_latex_expression() {
    let value =
        "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)";
    assert!(is_paired(value));
}

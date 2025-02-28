use two_fer::response;

#[test]

fn no_name_given() {
    let name = Option::None;
    let output = response(name);
    let expected = "One for you, one for me.";
    assert_eq!(output, expected);
}

#[test]

fn a_name_given() {
    let name = Option::Some("Alice");
    let output = response(name);
    let expected = "One for Alice, one for me.";
    assert_eq!(output, expected);
}

#[test]

fn another_name_given() {
    let name = Option::Some("Bob");
    let output = response(name);
    let expected = "One for Bob, one for me.";
    assert_eq!(output, expected);
}

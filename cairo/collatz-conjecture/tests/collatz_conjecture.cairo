use collatz_conjecture::steps;

#[test]
fn zero_steps_for_one() {
    assert_eq!(steps(1), 0);
}

#[test]

fn divide_if_even() {
    assert_eq!(steps(16), 4);
}

#[test]

fn even_and_odd_steps() {
    assert_eq!(steps(12), 9);
}

#[test]

fn large_number_of_even_and_odd_steps() {
    assert_eq!(steps(1000000), 152);
}

#[test]

#[should_panic(expected: ("Only positive integers are allowed",))]
fn zero_is_an_error() {
    steps(0);
}

use secret_handshake::commands;

#[test]
fn wink_for_one() {
    assert_eq!(commands(1), array!["wink"]);
}

#[test]

fn double_blink_for_ten() {
    assert_eq!(commands(2), array!["double blink"]);
}

#[test]

fn close_your_eyes_for_one_hundred() {
    assert_eq!(commands(4), array!["close your eyes"]);
}

#[test]

fn jump_for_one_thousand() {
    assert_eq!(commands(8), array!["jump"]);
}

#[test]

fn combine_two_actions() {
    assert_eq!(commands(3), array!["wink", "double blink"]);
}

#[test]

fn reverse_two_actions() {
    assert_eq!(commands(19), array!["double blink", "wink"]);
}

#[test]

fn reversing_one_action_gives_the_same_action() {
    assert_eq!(commands(24), array!["jump"]);
}

#[test]

fn reversing_no_actions_still_gives_no_actions() {
    assert_eq!(commands(16), array![]);
}

#[test]

fn all_possible_actions() {
    assert_eq!(commands(15), array!["wink", "double blink", "close your eyes", "jump"]);
}

#[test]

fn reverse_all_possible_actions() {
    assert_eq!(commands(31), array!["jump", "close your eyes", "double blink", "wink"]);
}

#[test]

fn do_nothing_for_zero() {
    assert_eq!(commands(0), array![]);
}

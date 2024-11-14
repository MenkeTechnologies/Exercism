use minesweeper::annotate;

#[test]
fn no_rows() {
    let input = array![];
    let expected = array![];
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn no_columns() {
    let input = array![""];
    let expected = array![""];
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn no_mines() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "   ",
        "   ",
        "   ",
    ], array![
        "   ",
        "   ",
        "   ",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn minefield_with_only_mines() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "***",
        "***",
        "***",
    ], array![
        "***",
        "***",
        "***",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn mine_surrounded_by_spaces() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "   ",
        " * ",
        "   ",
    ], array![
        "111",
        "1*1",
        "111",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn space_surrounded_by_mines() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "***",
        "* *",
        "***",
    ], array![
        "***",
        "*8*",
        "***",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn horizontal_line() {
    let input = array![" * * "];
    let expected = array!["1*2*1"];
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn horizontal_line_mines_at_edges() {
    let input = array!["*   *"];
    let expected = array!["*1 1*"];
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn vertical_line() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        " ",
        "*",
        " ",
        "*",
        " ",
    ], array![
        "1",
        "*",
        "2",
        "*",
        "1",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn vertical_line_mines_at_edges() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "*",
        " ",
        " ",
        " ",
        "*",
    ], array![
        "*",
        "1",
        " ",
        "1",
        "*",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn cross() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        "  *  ",
        "  *  ",
        "*****",
        "  *  ",
        "  *  ",
    ], array![
        " 2*2 ",
        "25*52",
        "*****",
        "25*52",
        " 2*2 ",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

#[test]

fn large_minefield() {
    #[cairofmt::skip]
    let (input, expected) = (array![
        " *  * ",
        "  *   ",
        "    * ",
        "   * *",
        " *  * ",
        "      ",
    ], array![
        "1*22*1",
        "12*322",
        " 123*2",
        "112*4*",
        "1*22*2",
        "111111",
    ]);
    let actual = annotate(input.span());
    assert_eq!(actual, expected);
}

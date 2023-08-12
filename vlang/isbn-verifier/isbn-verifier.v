module main
import regex

pub fn is_valid(isbn_10 string) bool {
    mut cnt := 1
    mut sum := 0
    re := regex.regex_opt(r'^\d-?\d{3}-?\d{5}-?[\dX]$') or { panic(err) }
    start, _ := re.match_string(isbn_10)
    if start < 0 { return false }
    for c in isbn_10.runes().reverse() {
        if c == `X` { sum += 10} else if c == `-` { continue } else { sum += int( c - `0`) * cnt}
        cnt++
    }

    return sum % 11 == 0
}

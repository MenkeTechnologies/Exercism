module main
fn score(word string) int {
    mut result := 0
    mut upper_array := word.to_upper().split("")
    for c in upper_array {
        if c in ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ]{
            result++
        }
        if c in ['D', 'G']{
            result += 2
        }
        if c in ['B', 'C', 'M', 'P']{
            result += 3
        }
        if c in ['F', 'H', 'V', 'W', 'Y']{
            result += 4
        }
        if c in ['K']{
            result += 5
        }
        if c in ['J', 'X']{
            result += 8
        }
        if c in ['Q', 'Z']{
            result += 10
        }
    }
    return result
}

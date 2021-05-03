package isogram

import (
    "unicode"
)


func IsIsogram(input string) bool {
    var used = map[rune]bool {}

    for _, r := range input {
        r = unicode.ToLower(r)
        if r < 'a' || r > 'z' {
            continue
        }

        if used[r] {
            return false
        }

        used[r] = true
    }

    return true
}

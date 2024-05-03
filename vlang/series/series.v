module main

fn slices(s string, len int) ![]string {
    if s.len == 0 {
        return error('s cannot be empty')
    }
    if len > s.len {
        return error('slice length cannot be greater than s length')
    }
    if len == 0 {
        return error('slice length cannot be zero')
    }
    if len < 0 {
        return error('slice length cannot be negative')
    }
    mut res := []string{}

    for i := 0; i <= s.len - len; i++ {
        res << s[i..i + len]
    }

    return res
}

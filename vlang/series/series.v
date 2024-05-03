module main

fn slices(s string, len int) ![]string {
    if s.len == 0 {
<<<<<<< HEAD
        return error('series cannot be empty')
    }
    if len > s.len {
        return error('slice length cannot be greater than series length')
=======
        return error('s cannot be empty')
    }
    if len > s.len {
        return error('slice length cannot be greater than s length')
>>>>>>> 0fb5b631079498b657c13fd4c1cf1d5aff2865e7
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

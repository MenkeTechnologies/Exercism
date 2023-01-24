module main
fn distance(a string, b string) !int {
    len_a := utf8_str_visible_length(a)
    len_b := utf8_str_visible_length(b)
	if len_a != len_b {
		return error('lengths must match!')
	}
	mut cnt := 0
	for i in 0 .. len_a {
		cnt += if a[i] == b[i] { 0 } else { 1 }
	}
	return cnt
}
module main

fn rotate(s string, amt int) string {
	assert 0 <= amt && amt <= 26
	mut buf := []u8{cap: s.len}
	for c in s {
		buf << match c {
			`A`...`Z` { u8(`A` + (c - `A` + amt) % 26) }
			`a`...`z` { u8(`a` + (c - `a` + amt) % 26) }
			else { c }
		}
	}
	return buf.bytestr()
}

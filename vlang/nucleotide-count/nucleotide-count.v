module main

fn count_nucleotides(strand string) !map[string]int {
	mut h := {
		'A': 0
		'C': 0
		'G': 0
		'T': 0
	}
	for c in strand.runes() {
		v := h[c.str()] or { return error('${c} is not a valid nucleotide!') }
		h[c.str()] = v + 1
	}
	return h
}


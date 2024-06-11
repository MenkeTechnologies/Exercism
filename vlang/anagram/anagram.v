module main

fn find_anagrams(subject string, candidates []string) []string {
	mut ret := []string{}
	mut target := subject.to_lower().runes()
	target.sort()
	for _, cand in candidates {
		if cand.str().to_lower() == subject.str().to_lower() {
			continue			
		}
		mut lc_sort := cand.str().to_lower().runes()
		lc_sort.sort()
		if target == lc_sort {
			ret << cand
		}
	}
	return ret
}

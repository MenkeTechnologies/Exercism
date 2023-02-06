module main
import regex
import arrays

fn is_isogram(word string) bool {
	mut re := regex.regex_opt(r'\W') or { panic(err) }
	clean_word := re.replace(word, '').to_lower()
	return arrays.map_of_counts(clean_word.split('')).values().all(it == 1)
}

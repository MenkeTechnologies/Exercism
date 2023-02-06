module main

fn is_pangram(phrase string) bool {
    return 'abcdefghijklmnopqrstuvwxyz'.split('')
	.all(phrase.to_lower().contains(it))
}

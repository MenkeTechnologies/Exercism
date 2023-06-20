module main

pub fn response(s string) string {
    nows := s.trim_space()
	is_question := nows.ends_with('?')
	is_yelling := s.is_upper() && s.to_lower().contains_any('abcdefghijklmnopqrstuvwxyz')
	if is_yelling {
		if is_question {
			return "Calm down, I know what I'm doing!"
		}
		return 'Whoa, chill out!'
	}
	if is_question {
		return 'Sure.'
	}
	if s.contains_only(' \t\n\r') {
		return 'Fine. Be that way!'
	}
	return 'Whatever.'
}

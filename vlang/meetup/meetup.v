module main

import time
import regex

const days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
const teenths = ['monteenth', 'tuesteenth', 'wednesteenth', 'thursteenth', 'friteenth', 'saturteenth', 'sunteenth']
const descriptors = ['first', 'second', 'third', 'fourth', 'last']
const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

fn date(phrase string) string {
	query := r'The (?P<day_spec>.*) of (?P<month>\w+) (?P<year>\d{4})'
	mut re := regex.regex_opt(query) or { panic(err) }
	if !re.matches_string(phrase) {
		panic('Invalid date: ""${phrase}""')
	}
	month := months.index(re.get_group_by_name(phrase, 'month')) + 1
	year := re.get_group_by_name(phrase, 'year').int()
	mut t := time.new_time(time.Time{ month: month, year: year, day: 1 })
    mut found_t := time.Time{}
	day_spec := re.get_group_by_name(phrase, 'day_spec')
	if day_spec.contains('teenth') {
		day := teenths.index(day_spec) + 1
		for t.day_of_week() != day || t.day < 13 {
			t = t.add_days(1)
		}
		found_t = time.Time{
			...t
		}
	} else {
		day := days.index(day_spec.all_after(' ')) + 1
		ord := descriptors.index(day_spec.all_before(' ')) + 1
		mut found := 0
		for found < ord && t.month == month {
			if t.day_of_week() == day {
				found_t = t
				found += 1
			}
			t = t.add_days(1)
		}
	}
	return found_t.ymmdd().replace('-0', '-').replace('-', '/')
}

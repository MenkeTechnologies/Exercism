module main

const plants_map = {
    'G': 'grass'
    'C': 'clover'
    'R': 'radishes'
    'V': 'violets'
}

fn plants(diagram string, student string) []string {
	rows := diagram.split_into_lines()
	student_start_cup := (student[0] - `A`) * 2
	return [
		plants_map[rows[0][student_start_cup].ascii_str()],
		plants_map[rows[0][student_start_cup + 1].ascii_str()],
		plants_map[rows[1][student_start_cup].ascii_str()],
		plants_map[rows[1][student_start_cup + 1].ascii_str()],
	]
}

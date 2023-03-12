module main

type Roster = map[int][]string

fn add_student(roster Roster, name string, grade int) Roster {
	for _, persons in roster {
		if name in persons {
			return roster
		}
	}
	mut dup := roster
	if name !in dup[grade] {
		dup[grade] << name
	}
	return dup
}

fn get_students_in_grade(roster Roster, grade int) []string {
	mut persons_in_grade := roster[grade]
	persons_in_grade.sort()
	return persons_in_grade
}
fn get_all_students(roster Roster) []string {
	mut all_students := []string{}
	mut grades := roster.keys()
	grades.sort()
	for grade in grades {
		all_students << get_students_in_grade(roster, grade)
	}
	return all_students
}

fn create_new_roster() Roster {
	roster := Roster(map[int][]string{})
	return roster
}


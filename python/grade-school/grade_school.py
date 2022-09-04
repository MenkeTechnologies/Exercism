from collections import defaultdict


class School:
    def __init__(self):
        self.student_grades = defaultdict(list)
        self.added_list = []

    def add_student(self, name, grade):
        for grade_lst in self.student_grades.values():
            if name in grade_lst:
                self.added_list.append(False)
                break
        else:
            self.student_grades[grade].append(name)
            self.added_list.append(True)

    def roster(self):
        r = []
        for k in sorted(self.student_grades.keys()):
            r.extend(sorted(self.student_grades[k]))
        return r

    def added(self):
        return self.added_list

    def grade(self, grade_number):
        return sorted(self.student_grades[grade_number])

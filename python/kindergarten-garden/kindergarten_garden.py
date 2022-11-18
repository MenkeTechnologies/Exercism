DEFAULT_STUDENTS = (
    'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Fred',
    'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry',
)
PLANTS = {
    'C': 'Clover',
    'G': 'Grass',
    'R': 'Radishes',
    'V': 'Violets',
}


class Garden:
    def __init__(self, diagram, students=DEFAULT_STUDENTS):
        self.lines = diagram.splitlines()
        self.students = sorted(students)

    def plants(self, student):
        index = self.students.index(student) * 2
        return [PLANTS[p[i]] for p in self.lines for i in (index, index + 1)]

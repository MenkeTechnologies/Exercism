typedef Student = (String name, int grade);

class GradeSchool {
  List<Student> _db = [];

  List<String> roster() => _db.map((kv) => kv.$1).toList();

  List<bool> add(List<Student> students) => [for (var s in students) _add(s)];

  bool _add(Student student) {
    final students = roster();
    final studentAlreadyExists = students.contains(student.$1);
    if (!studentAlreadyExists) {
      _db.add(student);
      _db.sort((a, b) =>
      a.$2.compareTo(b.$2) == 0
          ? a.$1.compareTo(b.$1)
          : a.$2.compareTo(b.$2));
    }
    return !studentAlreadyExists;
  }

  List<String> grade(int grade) => [for (var s in _db) if (s.$2 == grade) s.$1];
}

class School
  def initialize
    @school = Hash.new { [] }
  end

  def add(student, level)
    @school[level] <<= student
  end

  def students(x)
    @school[x].sort
  end

  def students_by_grade
    @school.keys.map { { grade: _1, students: students(_1) } }.sort_by { _1[:grade] }
  end
end

class GradeSchool
  @grades = Hash(Int32, Array(String)).new { |h, k| h[k] = [] of String }

  def add(name, grade)
    return false if roster.includes?(name)
    @grades[grade].push(name)
    @grades[grade].sort!
    true
  end

  def roster
    @grades.each_key.to_a.sort.map { |grade| @grades[grade] }.flatten
  end

  def grade(grd)
    @grades[grd]
  end
end


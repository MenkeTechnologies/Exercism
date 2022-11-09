class Garden
  STUDENTS = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)
  PLANTS = {"C" => :clover, "G" => :grass, "R" => :radishes, "V" => :violets}

  def initialize(diagram, students = STUDENTS)
    @diagram = diagram
    @students = students.map(&:downcase).sort.map(&:to_sym)
  end
  def method_missing(m)
    @diagram
      .split
      .flat_map { _1.chars.each_slice(2).to_a[@students.index(m)] }
      .map { PLANTS[_1] }
  end
end


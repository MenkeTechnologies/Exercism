class KindergartenGarden
  def initialize(@diagram : String)
  end
  def plants(student)
    i = @students.index!(student)
    @diagram.split("\n").map do |row|
      row[(2 * i)..(2 * i + 1)]
    end.join.chars.map{|c| @plant[c]}
  end
  @students =
    [
      "Alice",
      "Bob",
      "Charlie",
      "David",
      "Eve",
      "Fred",
      "Ginny",
      "Harriet",
      "Ileana",
      "Joseph",
      "Kincaid",
      "Larry",
    ]
  @plant =
    {
      'C' => "clover",
      'G' => "grass",
      'R' => "radishes",
      'V' => "violets",
    }
end

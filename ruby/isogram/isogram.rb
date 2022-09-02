class Isogram

  def self.isogram?(input)
    input.downcase.chars.filter { _1.match?(/[a-z]/) }
      .group_by { _1 }.values.all? { _1.size == 1 }
  end
end

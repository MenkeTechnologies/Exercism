class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @ending = [qualifier, @words.first].compact.join(" ")
  end

  def to_s
    @words.map.with_index do
      next_word = @words[_2 + 1]
      if next_word
        "For want of a #{_1} the #{next_word} was lost."
      else
        "And all for the want of a #{@ending}."
      end
    end.join("\n")
  end
end

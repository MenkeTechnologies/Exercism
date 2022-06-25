class Phrase
  def initialize(str)
    @w = str.downcase.scan(/\b[\w']+\b/).group_by { _1 }.map { [_1, _2.size] }.to_h
  end

  def word_count
    @w
  end
end

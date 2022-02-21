module Anagram
  def self.find(word : String, cand)
    cand.select { |c| c.downcase.chars.sort == word.downcase.chars.sort && c.downcase != word.downcase }
  end
end

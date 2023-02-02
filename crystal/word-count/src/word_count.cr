module WordCount
  def self.count_words(s : String)
    s.downcase.scan(/\w+(?:'\w+)?/).map(&.[0]).tally
  end
end

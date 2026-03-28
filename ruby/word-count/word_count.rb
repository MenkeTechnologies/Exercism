=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(str)
    @w = str.downcase.scan(/\b[\w']+\b/).group_by { _1 }.map { [_1, _2.size] }.to_h
  end

  def word_count
    @w
  end
end

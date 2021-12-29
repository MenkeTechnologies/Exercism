=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram

  def initialize(str)

    @str = str.downcase
    @letters = @str.chars.sort

  end

  def match(ary)
    ary.filter { _1.downcase.chars.sort == @letters && @str != _1.downcase }
  end

end

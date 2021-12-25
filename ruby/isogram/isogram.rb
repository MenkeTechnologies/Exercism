=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram

  def self.isogram?(input)

    input.downcase.chars.reject { _1 =~ /[-\s]/ }.group_by { _1 }.values.none? { _1.size > 1 }

  end
end

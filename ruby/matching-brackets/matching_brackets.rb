=begin
Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
`matching_brackets_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matching-brackets` directory.
=end

class Brackets

  MAP = {
    '[' => ']',
    '(' => ')',
    '{' => '}'
  }.freeze

  def self.paired?(str)

    stk = []

    str.chars.each do
      if MAP[_1]
        stk << _1
      elsif MAP.value?(_1)
        return false if stk.empty? || MAP[stk.pop] != _1
      end
    end

    stk.empty?

  end
end

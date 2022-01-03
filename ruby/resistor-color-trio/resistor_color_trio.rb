# frozen_string_literal: true

# Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
# `resistor_color_trio_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-trio` directory.

class ResistorColorTrio
  COLOR_RULES = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }.freeze

  RESISTOR_VAL = 'Resistor value: '

  UNITS = %w[ohms kiloohms megaohms gigaohms teraohms petaohms exaohms zettaohms].freeze

  def initialize(ary)
    @val = ary.take(ary.size - 1).map { color_val(_1) }.join + '0' * color_val(ary.last).to_i
  end

  def label
    prefix = @val.chars.reverse.drop_while { _1 == '0' }.reverse.join
    zc = @val.chars.reverse.take_while { _1 == '0' }.length

    "#{RESISTOR_VAL}#{prefix}#{'0' * (zc % 3)} #{UNITS[zc / 3]}"
  end

  private

  def color_val(var1)
    COLOR_RULES[var1] || (raise ArgumentError)
  end
end

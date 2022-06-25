class ResistorColor

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

  COLORS = COLOR_RULES.keys

  def self.color_code(str)

    COLOR_RULES[str].to_i

  end
end

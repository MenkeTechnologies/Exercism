class Brackets
  MAP = {
    '[' => ']',
    '(' => ')',
    '{' => '}'
  }.freeze

  def self.paired?(str)
    stk = []

    str.chars.each {
      MAP[_1] ? stk << _1 : MAP.value?(_1) &&
        (return false if stk.empty? || MAP[stk.pop] != _1)
    }

    stk.empty?
  end
end

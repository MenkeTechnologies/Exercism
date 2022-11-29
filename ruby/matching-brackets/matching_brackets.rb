class Brackets
  MAP = {
    '[' => ']',
    '(' => ')',
    '{' => '}'
  }.freeze

  def self.paired?(str)
    stk = []
    str.chars.each {
      MAP[_1] ? stk << MAP[_1] : MAP.value?(_1) &&
        (return false if stk.empty? || stk.pop != _1)
    }
    stk.empty?
  end
end

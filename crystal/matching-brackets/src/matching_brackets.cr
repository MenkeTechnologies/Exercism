module MatchingBrackets

  MAP = {'(' => ')', '[' => ']', '{' => '}'}

  def self.valid?(s)
    stk = [] of Char

    s.chars.each do |c|
      if MAP.has_key?(c)
        stk << c
        elsif MAP.has_value?(c)
          return false if stk.empty? || MAP[stk.pop?] != c
      end
    end

    stk.empty?
  end
end

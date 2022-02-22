module Isogram
  def self.isogram?(str : String) : Bool
    str.downcase.chars.select(&.letter?).group_by{|c| c}.values.all? {|v| v.size == 1}
  end
end

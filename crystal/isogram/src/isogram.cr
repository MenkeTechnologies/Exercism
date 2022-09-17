module Isogram
  def self.isogram?(s : String) : Bool
    s.downcase !~ /([a-z]).*\1/
  end
end

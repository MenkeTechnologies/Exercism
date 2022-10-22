module Isogram
  def self.isogram?(s)
    s.downcase !~ /([a-z]).*\1/
  end
end

class PopCount
  def self.egg_count(n : Int32) : Int32
      n.to_s(2).chars.select{|c| c == '1'}.size
  end
end

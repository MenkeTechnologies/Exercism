module RotationalCipher
  def self.rotate(s : String, key : Number)
    s.each_char.map do |c|
      if ('a'..'z').includes?(c)
        ((c.ord - 'a'.ord + key) % 26 + 'a'.ord).chr
      elsif ('A'..'Z').includes?(c)
        ((c.ord - 'A'.ord + key) % 26 + 'A'.ord).chr
      else
        c
      end
    end.join
  end
end


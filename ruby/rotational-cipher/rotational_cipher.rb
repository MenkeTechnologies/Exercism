class RotationalCipher

  def self.rotate(str, amount)

    str.chars.map do

      case _1
      when /[a-z]/
        ((_1.ord - 'a'.ord + amount) % 26) + 'a'.ord
      when /[A-Z]/
        ((_1.ord - 'A'.ord + amount) % 26) + 'A'.ord
      else
        _1
      end.chr

    end.join

  end
end

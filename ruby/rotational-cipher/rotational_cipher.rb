class RotationalCipher

  def self.rotate(str, amount)

    str.chars.map do

      case _1
      when /[a-z]/
        'a'.ord + (_1.ord - 'a'.ord + amount) % 26
      when /[A-Z]/
        'A'.ord + (_1.ord - 'A'.ord + amount) % 26
      else
        _1
      end.chr

    end.join

  end
end

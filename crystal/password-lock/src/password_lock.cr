class PasswordLock
  def initialize(@password : (String | Int32 | Float64)) end

  def encrypt
      @password = logic(@password)
  end

  def unlock?(key)
      "Unlocked" if logic(key) == @password
  end

  def logic(key)
    case key
      when Float64 then key * 4
      when String  then key.reverse
      else (key / 2).round
    end
  end
end

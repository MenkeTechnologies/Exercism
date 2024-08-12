class Library
  def self.first_letter(s : String)
      s[0]
  end
  def self.initials(first_name : String, last_name : String)
      "#{first_letter(first_name)}.#{first_letter(last_name)}"
  end
  def self.decrypt_character(c : Char)
    case c
        when 'A' then 'Z'
        when 'a' then 'z'
        when .letter? then c.pred()
        else c
    end
  end
  def self.decrypt_text(s : String)
      s.chars.map{ |c| decrypt_character(c) }.join
  end
end

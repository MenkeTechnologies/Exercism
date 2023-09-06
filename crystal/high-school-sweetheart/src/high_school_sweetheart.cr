class HighSchoolSweetheart
  def self.clean_up_name(s)
    s.gsub("-", " ").strip
  end
  def self.first_letter(s)
    clean_up_name(s)[0]
  end
  def self.initial(s)
    "#{first_letter(s).upcase}."
  end
  def self.pair(s1, s2)
    "❤ #{initial(s1)}  +  #{initial(s2)} ❤"
  end
end


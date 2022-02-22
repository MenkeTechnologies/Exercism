class Pangram
  def self.pangram?(str)
    ('a'..'z').all?{|c| str.downcase.includes?(c)}
  end
end

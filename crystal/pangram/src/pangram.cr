class Pangram
  def self.pangram?(s)
    ('a'..'z').all? { |c| s.downcase.includes?(c) }
  end
end

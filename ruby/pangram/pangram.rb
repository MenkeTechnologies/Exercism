class Pangram

  def self.pangram?(sentence)

    ('a'..'z').all?{ sentence.downcase.include? _1 }

  end
end

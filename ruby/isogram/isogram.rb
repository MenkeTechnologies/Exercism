class Isogram

  def self.isogram?(input)
    !input.downcase.match? /([a-z]).*\1/
  end
end

class Acronym

  def self.abbreviate(str)
    str.upcase.split(/(?:'S\b|\W+)/).map { _1[0] }.join
  end

end

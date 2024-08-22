module LanguageList
  def self.list
    [] of String
  end
  def self.add(list, language)
    list << language
  end
  def self.remove(list)
    list[...-1]
  end
  def self.at(list, index)
    list[index]
  end
  def self.parse(languages)
    languages.split(", ")
  end
end

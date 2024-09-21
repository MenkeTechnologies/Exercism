module SpellboundSteel
  POWERS = {"Warrior": 10, "Mage": 20, "Rogue": 30, "Fireball": 15, "Ice Storm": 25, "Lightning Bolt": 35}

  def self.find_card?(cards, card)
    cards.index(card)
  end

  def self.capitalize_names(characters)
    characters.map &.split.map(&.capitalize).join " "
  end

  def self.calculate_power_level(cards)
    cards.sum { |c| POWERS[c] }
  end

  def self.decode_characters(character)
      character.chars.each_slice(2).join &.first
  end
end

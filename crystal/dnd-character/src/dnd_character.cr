class DndCharacter
  getter name
  getter strength : Int32 = ability
  getter dexterity : Int32 = ability
  getter constitution : Int32 = ability
  getter intelligence : Int32 = ability
  getter wisdom : Int32 = ability
  getter charisma : Int32 = ability

  def initialize(@name = "Blandalf the Beige")
  end

  def self.ability
    Array.new(4) { Random.rand(1..6) }.sort.last(3).sum
  end

  def self.modifier(score)
    ((score - 10) / 2.0).floor
  end

  def hitpoints
      10 + DndCharacter.modifier(@constitution)
  end
end

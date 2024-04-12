class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    @strength = create_ability
    @dexterity = create_ability
    @constitution = create_ability
    @intelligence = create_ability
    @wisdom = create_ability
    @charisma = create_ability
    @hitpoints = 10 + DndCharacter.modifier(constitution)
  end

  def self.modifier(score) = (score - 10) / 2

  private
  def create_ability = (1..4).map { rand(6) + 1 }.sort.drop(1).sum
end

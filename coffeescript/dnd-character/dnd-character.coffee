module.exports = class
  constructor: () ->
    @strength = @ability()
    @dexterity = @ability()
    @intelligence = @ability()
    @wisdom = @ability()
    @charisma = @ability()
    @constitution = @ability()
    @hitpoints = 10 + @modifier @constitution

  modifier: (score) -> (score - 10) // 2

  ability: () ->
    rolls = [0,0,0,0]
    .map(() -> Math.floor(Math.random() * 6) + 1)
    .sort((x, y) -> x - y)
    .slice(1)
    .reduce((acc, n) -> acc + n)

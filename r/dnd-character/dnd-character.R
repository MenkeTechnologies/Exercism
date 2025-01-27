modifier = function(score) {
  floor((score - 10) / 2)
}

ability = function() {
  sum(sort(sample(1:6,4))[-1])
}

new_character = function() {
  constitution = ability()
  structure(list(
      strength = ability(),
      dexterity = ability(),
      constitution = constitution,
      intelligence = ability(),
      hitpoints = 10 + modifier(constitution),
      wisdom = ability(),
      charisma = ability()
  ), class = "character")
}

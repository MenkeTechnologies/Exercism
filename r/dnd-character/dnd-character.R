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
    constitution = ability(),
    intelligence = ability(),
    constiution = constitution,
    wisdom = ability(),
    charisma = ability(),
    hitpoints = 10 + modifier(constitution)
  ), class = "character")
}

local function ability(scores)
  table.sort(scores)
  return scores[4] + scores[3] + scores[2]
end
local function roll_dice()
  return { math.random(6), math.random(6), math.random(6), math.random(6) }
end
local function modifier(input)
  return (input - 10) // 2
end
local Character = {}
function Character:new (name)
  local self = setmetatable({}, Character)
  self.name = name
  self.strength = ability(roll_dice())
  self.dexterity = ability(roll_dice())
  self.constitution = ability(roll_dice())
  self.intelligence = ability(roll_dice())
  self.wisdom = ability(roll_dice())
  self.charisma = ability(roll_dice())
  self.hitpoints = 10 + modifier(self.constitution)
  return self
end
return {
  Character = Character,
  ability = ability,
  roll_dice = roll_dice,
  modifier = modifier
}

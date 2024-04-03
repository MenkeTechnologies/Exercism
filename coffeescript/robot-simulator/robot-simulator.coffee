module.exports = class
  directions =
    "north":
      "left": "west"
      "right": "east"
    "east":
      "left": "north"
      "right": "south"
    "south":
      "left": "east"
      "right": "west"
    "west":
      "left": "south"
      "right": "north"
  constructor: (@x, @y, @direction) ->
  move: (commands) =>
    for c in commands.split("")
      if c == "L"
        @direction = directions[@direction]["left"]
      else if c == "R"
        @direction = directions[@direction]["right"]
      else if c == "A"
        if @direction == "north"
          @y += 1
        else if @direction == "south"
          @y -= 1
        else if @direction == "east"
          @x += 1
        else if @direction == "west"
          @x -= 1
          

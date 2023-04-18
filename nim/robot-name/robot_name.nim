import random

randomize()

type Robot* = object
  name*: string

proc generateName(): string =
  for i in 0..1: result &= sample({'A'..'Z'})
  for i in 0..2: result &= $sample({1..9})

proc makeRobot*(): Robot = Robot(name: generateName())

proc reset*(r: var Robot) = r.name = generateName()

RobotSimulator = require "./robot-simulator"

describe "RobotSimulator", ->
  describe "Create robot", ->
    it "at origin facing north", ->
      results = new RobotSimulator 0, 0, "north"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

    it "at negative position facing south", ->
      results = new RobotSimulator -1, -1, "south"
      expect(results.x).toEqual -1
      expect(results.y).toEqual -1
      expect(results.direction).toEqual "south"

  describe "Rotating clockwise", ->
    it "changes north to east", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    it "changes east to south", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "south"

    it "changes south to west", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

    it "changes west to north", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

  describe "Rotating counter-clockwise", ->
    it "changes north to west", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

    it "changes west to south", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "south"

    it "changes south to east", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    it "changes east to north", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

  describe "Moving forward one", ->
    it "facing north increments Y", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "A"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 1
      expect(results.direction).toEqual "north"

    it "facing south decrements Y", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "A"
      expect(results.x).toEqual 0
      expect(results.y).toEqual -1
      expect(results.direction).toEqual "south"

    it "facing east increments X", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "A"
      expect(results.x).toEqual 1
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    it "facing west decrements X", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "A"
      expect(results.x).toEqual -1
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

  describe "Follow series of instructions", ->
    it "moving east and north from README", ->
      results = new RobotSimulator 7, 3, "north"
      results.move "RAALAL"
      expect(results.x).toEqual 9
      expect(results.y).toEqual 4
      expect(results.direction).toEqual "west"

    it "moving west and north", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "LAAARALA"
      expect(results.x).toEqual -4
      expect(results.y).toEqual 1
      expect(results.direction).toEqual "west"

    it "moving west and south", ->
      results = new RobotSimulator 2, -7, "east"
      results.move "RRAAAAALA"
      expect(results.x).toEqual -3
      expect(results.y).toEqual -8
      expect(results.direction).toEqual "south"

    it "moving east and north", ->
      results = new RobotSimulator 8, 4, "south"
      results.move "LAAARRRALLLL"
      expect(results.x).toEqual 11
      expect(results.y).toEqual 5
      expect(results.direction).toEqual "north"

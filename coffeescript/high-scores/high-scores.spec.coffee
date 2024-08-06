HighScores = require "./high-scores"

describe "HighScores", ->
  it "List of scores", ->
    hs = new HighScores [30, 50, 20, 70]
    expect(hs.scores).toEqual [30, 50, 20, 70]

  it "Latest score", ->
    hs = new HighScores [10, 0, 90, 30]
    expect(hs.latest()).toEqual 30

  it "Personal best", ->
    hs = new HighScores [40, 100, 70]
    expect(hs.personalBest()).toEqual 100

  describe "Top three scores", ->
    it "Personal top three from a list of scores", ->
      hs = new HighScores [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
      expect(hs.personalTopThree()).toEqual [100, 90, 70]

    it "Personal top highest to lowest", ->
      hs = new HighScores [20, 10, 30]
      expect(hs.personalTopThree()).toEqual [30, 20, 10]

    it "Personal top when there is a tie", ->
      hs = new HighScores [40, 20, 40, 30]
      expect(hs.personalTopThree()).toEqual [40, 40, 30]

    it "Personal top when there are less than three", ->
      hs = new HighScores [30, 70]
      expect(hs.personalTopThree()).toEqual [70, 30]

    it "Personal top when there is only one", ->
      hs = new HighScores [40]
      expect(hs.personalTopThree()).toEqual [40]

    it "Latest score after personal top scores", ->
      hs = new HighScores [70, 50, 20, 30]
      hs.personalTopThree()
      expect(hs.latest()).toEqual 30

    it "Scores after personal top scores", ->
      hs = new HighScores [30, 50, 20, 70]
      hs.personalTopThree()
      expect(hs.scores).toEqual [30, 50, 20, 70]

  it "Latest score after personal best", ->
    hs = new HighScores [20, 70, 15, 25, 30]
    hs.personalBest()
    expect(hs.latest()).toEqual 30

  it "Scores after personal best", ->
    hs = new HighScores [20, 70, 15, 25, 30]
    hs.personalBest()
    expect(hs.scores).toEqual [20, 70, 15, 25, 30]

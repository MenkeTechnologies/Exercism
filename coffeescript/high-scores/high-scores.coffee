module.exports = class

  constructor: (@scores) ->

  latest: () -> @scores[@scores.length - 1]

  personalBest: () -> Math.max.apply(null, @scores)

  personalTopThree: () ->
    scoresCopy = @scores.slice()
    scoresCopy.sort((a, b) -> b - a).slice(0, 3)

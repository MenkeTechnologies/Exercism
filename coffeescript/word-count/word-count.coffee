class WordCount
  constructor: (@words) ->

  count: ->
    @words
      .toLowerCase()
      .match /\w+('\w+)?/g
      .reduce (acc, n) ->
        acc[n] = acc[n] + 1 || 1;
        acc
    , {}

module.exports = WordCount

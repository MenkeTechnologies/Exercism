module.exports = class
  @abbreviate: (s) ->
    (w[0].toUpperCase() for w in s.match(/[a-z']+/gi) || []).join ""

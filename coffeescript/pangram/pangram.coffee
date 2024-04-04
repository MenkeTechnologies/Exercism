module.exports = class
  @isPangram: (s) ->
    [97..122].map((c) => String.fromCharCode(c)).every((c) => s.toLowerCase().includes(c))


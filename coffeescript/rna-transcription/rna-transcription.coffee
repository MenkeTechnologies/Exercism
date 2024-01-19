module.exports = class RnaTranscription
  dict = G: 'C', C: 'G', T: 'A', A: 'U'
  constructor: (@dna) ->
  toRna: -> @dna.split("").map((c) -> dict[c]).join ''

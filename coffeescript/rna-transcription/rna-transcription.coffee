module.exports = class
  constructor: (@dna) -> @dict = G: 'C', C: 'G', T: 'A', A: 'U'
  toRna: -> (@dict[c] for c in @dna.split("")).join ''

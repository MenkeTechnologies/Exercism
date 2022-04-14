class NucleotideCount
  constructor: (s) ->
    @nucleotideCounts = A: 0, T: 0, G: 0, C: 0
    @valid = true
    for nt in s
      if @nucleotideCounts[nt] != undefined
        @nucleotideCounts[nt]++
      else
        @valid = false



  count: (nt) ->
    if !@valid
      throw new Error('Invalid nucleotide strand')
    if @nucleotideCounts[nt] == undefined
      throw new Error('Invalid nucleotide')

    @nucleotideCounts[nt]

module.exports = NucleotideCount

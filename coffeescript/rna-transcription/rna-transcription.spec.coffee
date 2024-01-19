RnaTranscription = require './rna-transcription'

describe 'RnaTranscription', ->
  it 'Empty RNA sequence', ->
    dna = new RnaTranscription ""
    expect(dna.toRna()).toEqual("")

  it 'RNA complement of cytosine is guanine', ->
    dna = new RnaTranscription "C"
    expect(dna.toRna()).toEqual("G")

  it 'RNA complement of guanine is cytosine', ->
    dna = new RnaTranscription "G"
    expect(dna.toRna()).toEqual("C")

  it 'RNA complement of thymine is adenine', ->
    dna = new RnaTranscription "T"
    expect(dna.toRna()).toEqual("A")

  it 'RNA complement of adenine is uracil', ->
    dna = new RnaTranscription "A"
    expect(dna.toRna()).toEqual("U")

  it 'RNA complement', ->
    dna = new RnaTranscription "ACGTGGTCTTAA"
    expect(dna.toRna()).toEqual("UGCACCAGAAUU")

Hamming = require './hamming'

describe "Hamming", ->
  it "empty strands", ->
    result = Hamming.distance "", ""
    expect(result).toEqual 0

  it "single letter identical strands", ->
    result = Hamming.distance "A", "A"
    expect(result).toEqual 0

  it "single letter different strands", ->
    result = Hamming.distance "G", "T"
    expect(result).toEqual 1

  it "long identical strands", ->
    result = Hamming.distance "GGACTGAAATCTG", "GGACTGAAATCTG"
    expect(result).toEqual 0

  it "long different strands", ->
    result = Hamming.distance "GGACGGATTCTG", "AGGACGGATTCT"
    expect(result).toEqual 9

  it "disallow first strand longer", ->
    expect ->
      Hamming.distance "AATG", "AAA"
    .toThrow new Error "strands must be of equal length"

  it "disallow second strand longer", ->
    expect ->
      Hamming.distance "ATA", "AGTG"
    .toThrow new Error "strands must be of equal length"

  it "disallow second strand longer", ->
    expect ->
      Hamming.distance "ATA", "AGTG"
    .toThrow new Error "strands must be of equal length"

  it "disallow empty first strand", ->
    expect ->
      Hamming.distance "", "G"
    .toThrow new Error "strands must be of equal length"

  it "disallow empty second strand", ->
    expect ->
      Hamming.distance "G", ""
    .toThrow new Error "strands must be of equal length"

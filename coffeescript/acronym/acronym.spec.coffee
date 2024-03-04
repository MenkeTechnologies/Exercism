Acronym = require './acronym'

describe "Acronym", ->
  it "basic", ->
      result = Acronym.abbreviate "Portable Network Graphics"
      expect(result).toEqual "PNG"

  it "lowercase words", ->
      result = Acronym.abbreviate "Ruby on Rails"
      expect(result).toEqual "ROR"

  it "punctuation", ->
      result = Acronym.abbreviate "First In, First Out"
      expect(result).toEqual "FIFO"

  it "all caps word", ->
      result = Acronym.abbreviate "GNU Image Manipulation Program"
      expect(result).toEqual "GIMP"

  it "punctuation without whitespace", ->
      result = Acronym.abbreviate "Complementary metal-oxide semiconductor"
      expect(result).toEqual "CMOS"

  it "very long abbreviation", ->
      result = Acronym.abbreviate "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
      expect(result).toEqual "ROTFLSHTMDCOALM"

  it "consecutive delimiters", ->
      result = Acronym.abbreviate "Something - I made up from thin air"
      expect(result).toEqual "SIMUFTA"

  it "apostrophes", ->
      result = Acronym.abbreviate "Halley's Comet"
      expect(result).toEqual "HC"

  it "underscore emphasis", ->
      result = Acronym.abbreviate "The Road _Not_ Taken"
      expect(result).toEqual "TRNT"

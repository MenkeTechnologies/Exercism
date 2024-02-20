EliudsEggs = require './eliuds-eggs'

describe "Eliud's Eggs", ->
  it '0 eggs', ->
    result = EliudsEggs.eggCount 0
    expect(result).toEqual 0

  it '1 egg', ->
    result = EliudsEggs.eggCount 16
    expect(result).toEqual 1

  it '4 eggs', ->
    result = EliudsEggs.eggCount 89
    expect(result).toEqual 4

  it '13 eggs', ->
    result = EliudsEggs.eggCount 2000000000
    expect(result).toEqual 13
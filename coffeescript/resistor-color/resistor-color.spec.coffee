ResistorColor = require './resistor-color'

describe 'ResistorColor', ->
  it 'Black', ->
    results = ResistorColor.colorCode('black')
    expected = 0
    expect(results).toEqual expected

  it 'White', ->
    results = ResistorColor.colorCode('white')
    expected = 9
    expect(results).toEqual expected

  it 'Orange', ->
    results = ResistorColor.colorCode('orange')
    expected = 3
    expect(results).toEqual expected

  it 'Colors', ->
    results = ResistorColor.colors()
    expected = [
        'black'
        'brown'
        'red'
        'orange'
        'yellow'
        'green'
        'blue'
        'violet'
        'grey'
        'white'
    ]
    expect(results).toEqual expected

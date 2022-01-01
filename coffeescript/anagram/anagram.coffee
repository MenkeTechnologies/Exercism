# This is a stub file for the CoffeeScript track

class Anagram
  constructor: (orig) ->
    @orig = orig.toLowerCase()
    @sorted = @_sort(orig)

  match: (candidates) ->
    candidates.map (c)=>c.toLowerCase()
      .filter (c)=>@_sort(c) == @sorted and c != @orig

  _sort: (str) ->
    str.toLowerCase().split('').sort().join('')

module.exports = Anagram

ReverseString = require './reverse-string'

describe 'ReverseString', ->
  it 'An empty string', ->
    reversed = ReverseString.reverse("")
    expect(reversed).toEqual("")

  it 'A word', ->
    reversed = ReverseString.reverse("robot")
    expect(reversed).toEqual("tobor")

  it 'A capitalized word', ->
    reversed = ReverseString.reverse("Ramen")
    expect(reversed).toEqual("nemaR")

  it 'A sentence with punctuation', ->
    reversed = ReverseString.reverse("I'm hungry!")
    expect(reversed).toEqual("!yrgnuh m'I")

  it 'A palindrome', ->
    reversed = ReverseString.reverse("racecar")
    expect(reversed).toEqual("racecar")

  it 'An even-sized word', ->
    reversed = ReverseString.reverse("drawer")
    expect(reversed).toEqual("reward")

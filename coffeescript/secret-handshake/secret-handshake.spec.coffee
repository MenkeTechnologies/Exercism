SecretHandshake = require './secret-handshake'

describe "SecretHandshake", ->
  it "wink for 1", ->
    results = SecretHandshake.commands 1
    expected = ["wink"]
    expect(results).toEqual expected

  it "double blink for 10", ->
    results = SecretHandshake.commands 2
    expected = ["double blink"]
    expect(results).toEqual expected

  it "close your eyes for 100", ->
    results = SecretHandshake.commands 4
    expected = ["close your eyes"]
    expect(results).toEqual expected

  it "jump for 1000", ->
    results = SecretHandshake.commands 8
    expected = ["jump"]
    expect(results).toEqual expected

  it "combine two actions", ->
    results = SecretHandshake.commands 3
    expected = ["wink", "double blink"]
    expect(results).toEqual expected

  it "reverse two actions", ->
    results = SecretHandshake.commands 19
    expected = ["double blink", "wink"]
    expect(results).toEqual expected

  it "reversing one action gives the same action", ->
    results = SecretHandshake.commands 24
    expected = ["jump"]
    expect(results).toEqual expected

  it "reversing no actions still gives no actions", ->
    results = SecretHandshake.commands 16
    expected = []
    expect(results).toEqual expected

  it "reversing no actions still gives no actions", ->
    results = SecretHandshake.commands 15
    expected = ["wink", "double blink", "close your eyes", "jump"]
    expect(results).toEqual expected

  it "reverse all possible actions", ->
    results = SecretHandshake.commands 31
    expected = ["jump", "close your eyes", "double blink", "wink"]
    expect(results).toEqual expected

  it "do nothing for zero", ->
    results = SecretHandshake.commands 0
    expected = []
    expect(results).toEqual expected

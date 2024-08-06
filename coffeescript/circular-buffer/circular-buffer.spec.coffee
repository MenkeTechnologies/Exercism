CircularBuffer = require './circular-buffer'

describe "Circular Buffer", ->
  it "reading empty buffer should fail", ->
    buff = new CircularBuffer 1
    expect ->
      buff.read()
    .toThrow new Error "empty buffer"

  it "can read an item just written", ->
    buff = new CircularBuffer 1
    buff.write 1
    expect(buff.read()).toEqual 1

  it "each item may only be read once", ->
    buff = new CircularBuffer 1
    buff.write 1
    expect(buff.read()).toEqual 1
    expect ->
      buff.read()
    .toThrow new Error "empty buffer"

  it "items are read in the order they are written", ->
    buff = new CircularBuffer 2
    buff.write 1
    buff.write 2
    expect(buff.read()).toEqual 1
    expect(buff.read()).toEqual 2

  it "full buffer can't be written to", ->
    buff = new CircularBuffer 1
    buff.write 1
    expect ->
      buff.write 2
    .toThrow new Error "full buffer"

  it "a read frees up capacity for another write", ->
    buff = new CircularBuffer 1
    buff.write 1
    expect(buff.read()).toEqual 1
    buff.write 2
    expect(buff.read()).toEqual 2

  it "read position is maintained even across multiple writes", ->
    buff = new CircularBuffer 3
    buff.write 1
    buff.write 2
    expect(buff.read()).toEqual 1
    buff.write 3
    expect(buff.read()).toEqual 2
    expect(buff.read()).toEqual 3

  it "items cleared out of buffer can't be read", ->
    buff = new CircularBuffer 1
    buff.write 1
    buff.clear()
    expect ->
      buff.read()
    .toThrow new Error "empty buffer"

  it "clear frees up capacity for another write", ->
    buff = new CircularBuffer 1
    buff.write 1
    buff.clear()
    buff.write 2
    expect(buff.read()).toEqual 2

  it "clear does nothing on empty buffer", ->
    buff = new CircularBuffer 1
    buff.clear()
    buff.write 1
    expect(buff.read()).toEqual 1

  it "overwrite acts like write on non-full buffer", ->
    buff = new CircularBuffer 2
    buff.write 1
    buff.overwrite 2
    expect(buff.read()).toEqual 1
    expect(buff.read()).toEqual 2

  it "overwrite replaces the oldest item on full buffer", ->
    buff = new CircularBuffer 2
    buff.write 1
    buff.write 2
    buff.overwrite 3
    expect(buff.read()).toEqual 2
    expect(buff.read()).toEqual 3

  it "overwrite replaces the oldest item remaining in buffer following a read", ->
    buff = new CircularBuffer 3
    buff.write 1
    buff.write 2
    buff.write 3
    expect(buff.read()).toEqual 1
    buff.write 4
    buff.overwrite 5
    expect(buff.read()).toEqual 3
    expect(buff.read()).toEqual 4
    expect(buff.read()).toEqual 5

  it "initial clear does not affect wrapping around", ->
    buff = new CircularBuffer 2
    buff.clear()
    buff.write 1
    buff.write 2
    buff.overwrite 3
    buff.overwrite 4
    expect(buff.read()).toEqual 3
    expect(buff.read()).toEqual 4
    expect ->
      buff.read()
    .toThrow new Error "empty buffer"

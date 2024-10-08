
IsbnVerifier = require './isbn-verifier'

describe  'ISBN Verifier', ->
  it 'valid ISBN', ->
    expect(IsbnVerifier.isValid '3-598-21508-8').toEqual true

  it 'invalid ISBN check digit', ->
    expect(IsbnVerifier.isValid '3-598-21508-9').toEqual false

  it 'valid ISBN with a check digit of 10', ->
    expect(IsbnVerifier.isValid '3-598-21507-X').toEqual true

  it 'check digit is a character other than X', ->
    expect(IsbnVerifier.isValid '3-598-21507-A').toEqual false

  it 'invalid check digit in ISBN is not treated as zero', ->
    expect(IsbnVerifier.isValid '4-598-21507-B').toEqual false

  it 'invalid character in ISBN is not treated as zero', ->
    expect(IsbnVerifier.isValid '3-598-P1581-X').toEqual false

  it 'X is only valid as a check digit', ->
    expect(IsbnVerifier.isValid '3-598-2X507-9').toEqual false

  it 'valid ISBN without separating dashes', ->
    expect(IsbnVerifier.isValid '3598215088').toEqual true

  it 'ISBN without separating dashes and X as check digit', ->
    expect(IsbnVerifier.isValid '359821507X').toEqual true

  it 'ISBN without check digit and dashes', ->
    expect(IsbnVerifier.isValid '359821507').toEqual false

  it 'too long ISBN and no dashes', ->
    expect(IsbnVerifier.isValid '3598215078X').toEqual false

  it 'too short ISBN', ->
    expect(IsbnVerifier.isValid '00').toEqual false

  it 'ISBN without check digit', ->
    expect(IsbnVerifier.isValid '3-598-21507').toEqual false

  it 'check digit of X should not be used for 0', ->
    expect(IsbnVerifier.isValid '3-598-21515-X').toEqual false

  it 'empty ISBN', ->
    expect(IsbnVerifier.isValid '').toEqual false

  it 'input is 9 characters', ->
    expect(IsbnVerifier.isValid '134456729').toEqual false

  it 'invalid characters are not ignored after checking length', ->
    expect(IsbnVerifier.isValid '3132P34035').toEqual false

  it 'invalid characters are not ignored before checking length', ->
    expect(IsbnVerifier.isValid '3598P215088').toEqual false

  it 'input is too long but contains a valid ISBN', ->
    expect(IsbnVerifier.isValid '98245726788').toEqual false

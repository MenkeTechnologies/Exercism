class AtbashCipher
  @encode: (string)->
    encoded_arr = (
      for letter in string.toLowerCase().split('')
        @encodeChar(letter)).filter( (l)-> (l.match(/[a-z0-9]/)) )
    r = (
      for letter, i in encoded_arr
        if (i % 5 == 0) and (i != 0)
          " #{letter}"
        else
          letter)
    r.join('')
  @encodeChar: (c)=>
    if 'a' <= c <= 'z'
      String.fromCharCode('z'.charCodeAt(0) - c.charCodeAt(0) + 'a'.charCodeAt(0))
    else
      c
class Atbash extends AtbashCipher

module.exports = Atbash

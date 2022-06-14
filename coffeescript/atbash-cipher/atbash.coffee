class AtbashCipher
  @encode: (args) ->
    @table =
      'a': 'z'
      'b': 'y'
      'c': 'x'
      'd': 'w'
      'e': 'v'
      'f': 'u'
      'g': 't'
      'h': 's'
      'i': 'r'
      'j': 'q'
      'k': 'p'
      'l': 'o'
      'm': 'n'
      'n': 'm'
      'o': 'l'
      'p': 'k'
      'q': 'j'
      'r': 'i'
      's': 'h'
      't': 'g'
      'u': 'f'
      'v': 'e'
      'w': 'd'
      'x': 'c'
      'y': 'b'
      'z': 'a'
      '0': '0'
      '1': '1'
      '2': '2'
      '3': '3'
      '4': '4'
      '5': '5'
      '6': '6'
      '7': '7'
      '8': '8'
      '9': '9'
    @text = args.toLowerCase().replace(/[., ']/g, "")
    @answer = ''
    for current, idx in @text
      @answer += @table[current]
      @answer += " " if (idx + 1) % 5 == 0 & idx != @text.length-1
    @answer
module.exports = AtbashCipher

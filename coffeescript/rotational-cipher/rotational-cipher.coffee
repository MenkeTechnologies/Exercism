module.exports = class
  constructor: (@shift) ->
  rotate: (s) ->
    s.split('').map((c) =>
      if c.match(/[a-z]/)
        String.fromCharCode(((c.charCodeAt(0) - 97 + @shift) % 26) + 97)
      else if c.match(/[A-Z]/)
        String.fromCharCode(((c.charCodeAt(0) - 65 + @shift) % 26) + 65)
      else
        c
    ).join('')


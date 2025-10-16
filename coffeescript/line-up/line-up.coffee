module.exports = class
  @format: (name, n) ->
    "#{name}, you are the #{n}#{@getSuffix n} customer we serve today. Thank you!"
  @getSuffix: (n) ->
    if n.toString().match /1(1|2|3)$/
      'th'
    else if n.toString().match /1$/
      'st'
    else if n.toString().match /2$/
      'nd'
    else if n.toString().match /3$/
      'rd'
    else
      'th'

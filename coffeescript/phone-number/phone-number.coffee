module.exports = class PhoneNumber
  constructor: (@num) ->
  clean: ->
    throw "letters not permitted" if /[a-zA-Z]/.test @num
    throw "punctuations not permitted" if /[^\d\s-+.()]/.test @num
    cleaned = @num.replace(/\D/g, '')
    throw "must not be fewer than 10 digits" if cleaned.length < 10
    throw "must not be more than 11 digits" if cleaned.length > 11
    cleaned = cleaned.replace(/^1/, '') if cleaned.length is 11
    throw "11 digits must start with 1" if cleaned.length is 11
    throw "area code cannot start with zero" if cleaned[0] is '0'
    throw "area code cannot start with one" if cleaned[0] is '1'
    throw "exchange code cannot start with zero" if cleaned[3] is '0'
    throw "exchange code cannot start with one" if cleaned[3] is '1'

    cleaned

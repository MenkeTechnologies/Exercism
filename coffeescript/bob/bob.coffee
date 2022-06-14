class Bob
  hey: (input) ->
    msg = new MessageParser input
    switch
      when msg.isShouting() then 'Whoa, chill out!'
      when msg.isQuestion() then 'Sure.'
      when msg.isEmpty() then 'Fine. Be that way!'
      else
        'Whatever.'
class MessageParser
  constructor: (input) ->
    @nows = input.replace(/\s/g, '')
    @hasLetters = @nows.toLowerCase() != @nows.toUpperCase()

  isShouting: -> @hasLetters && @nows == @nows.toUpperCase()
  isQuestion: -> @hasLetters && @nows.slice(-1) == '?'
  isEmpty: -> @nows == ''

module.exports = Bob

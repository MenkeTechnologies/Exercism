module.exports = class
  constructor: ->
    @_open = false

  open: ->
    throw Error 'account already open' if @_open
    @_open = true
    @_balance = 0

  close: ->
    throw Error 'account not open' if !@_open
    @_open = false

  balance: ->
    throw Error 'account not open' if !@_open
    @_balance

  deposit: (amt) ->
    throw Error 'account not open' if !@_open
    throw Error 'amount must be greater than 0' if amt < 1
    @_balance += amt

  withdraw: (amt) ->
    throw Error 'account not open' if !@_open
    throw Error 'amount must be less than balance' if amt > @_balance
    throw Error 'amount must be greater than 0' if amt < 1
    @_balance -= amt

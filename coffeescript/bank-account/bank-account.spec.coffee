BankAccount = require './bank-account'

describe 'BankAccount', ->
  it 'Newly opened account has zero balance', ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect(bankAccount.balance()).toEqual 0

  it "Single deposit", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    expect(bankAccount.balance()).toEqual 100

  it "Multiple deposits", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.deposit 50
    expect(bankAccount.balance()).toEqual 150

  it "Withdraw once", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.withdraw 75
    expect(bankAccount.balance()).toEqual 25

  it "Withdraw twice", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.withdraw 80
    bankAccount.withdraw 20
    expect(bankAccount.balance()).toEqual 0

  it "Can do multiple operations sequentially", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.deposit 110
    bankAccount.withdraw 200
    bankAccount.deposit 60
    bankAccount.withdraw 50
    expect(bankAccount.balance()).toEqual 20

  it "Cannot check balance of closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.balance()).toThrow "account not open"

  it "Cannot deposit into closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.deposit 50).toThrow "account not open"

  it "Cannot deposit into unopened account", ->
    bankAccount = new BankAccount
    expect( -> bankAccount.deposit 50).toThrow "account not open"

  it "Cannot withdraw from closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.withdraw 50).toThrow "account not open"

  it "Cannot close an account that was not opened", ->
    bankAccount = new BankAccount
    expect( -> bankAccount.close()).toThrow "account not open"

  it "Cannot open an already opened account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect( -> bankAccount.open()).toThrow "account already open"


  it "Reopened account does not retain balance", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 50
    bankAccount.close()
    bankAccount.open()
    expect(bankAccount.balance()).toEqual 0

  it "Cannot withdraw more than deposited", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 25
    expect( -> bankAccount.withdraw 50).toThrow "amount must be less than balance"

  it "Cannot withdraw negative", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    expect( -> bankAccount.withdraw -50).toThrow "amount must be greater than 0"

  it "Cannot deposit negative", ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect( -> bankAccount.deposit -50).toThrow "amount must be greater than 0"


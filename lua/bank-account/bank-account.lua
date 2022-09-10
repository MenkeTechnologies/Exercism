local BankAccount = {}
BankAccount.__index = BankAccount
function BankAccount.new()
  local self = setmetatable({}, BankAccount)
  self._balance = 0
  self._open = true
  return self
end
function BankAccount:balance()
  return self._balance
end
function BankAccount:deposit(amt)
  if amt > 0 and self._open then
    self._balance = self._balance + amt
  else
    error()
  end
end
function BankAccount:withdraw(amt)
  if amt > 0 and amt < self._balance and self._open then
    self._balance = self._balance - amt
  else
    error()
  end
end
function BankAccount:close()
  self._open = false
end
return BankAccount

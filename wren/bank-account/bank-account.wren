class BankAccount {
  construct new() {
    _balance = 0
    _open = false
  }
  open() {
    if (_open) Fiber.abort("Bank account error")
    _open = true
  }
  close() {
    if (!_open) Fiber.abort("Bank account error")
    _open = false
    _balance = 0
  }
  deposit(amt) {
    if (!_open || amt < 0) Fiber.abort("Bank account error")
    _balance = _balance + amt
  }
  withdraw(amt) {
    if (!_open || amt > _balance || amt < 0) Fiber.abort("Bank account error")
    _balance = _balance - amt
  }
  balance {
    if (!_open) Fiber.abort("Bank account error")
    return _balance
  }
}

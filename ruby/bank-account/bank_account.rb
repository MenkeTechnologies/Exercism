class BankAccount
  @open = false
  def open
    raise ArgumentError if @open
    @balance = 0
    @open = true
  end
  def close
    raise ArgumentError if !@open
    @open = false
  end
  def balance
    raise ArgumentError if !@open
    @balance
  end
  def deposit(amt)
    raise ArgumentError if !@open or amt < 0
    @balance += amt
  end
  def withdraw(amt)
    raise ArgumentError if !@open or amt > balance or amt < 0
    @balance -= amt
  end
end

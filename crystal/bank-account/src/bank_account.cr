class BankAccount
  @opened : Bool
  @balance : Int32
  def initialize
    @opened = false
    @balance = 0
  end
  def open
    raise ArgumentError.new if @opened
    @opened = true
    @balance = 0
  end
  def close
    raise ArgumentError.new if !@opened
    @opened = false
  end
  def balance
    raise ArgumentError.new if !@opened
    @balance
  end
  def deposit(amt : Int32)
    raise ArgumentError.new if !@opened || amt <= 0
    @balance += amt
  end
  def withdraw(amt : Int32)
    raise ArgumentError.new if !@opened || @balance - amt < 0 || amt <= 0
    @balance -= amt
  end
end

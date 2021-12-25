module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 5000
      2.475
    elsif balance >= 1000
      1.621
    elsif balance >= 0
      0.5
    else
      -3.213
    end
  end

  def self.annual_balance_update(balance)
    var = balance.abs * interest_rate(balance) / 100
    balance + var
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    cnt = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      cnt += 1
    end
    cnt
  end
end

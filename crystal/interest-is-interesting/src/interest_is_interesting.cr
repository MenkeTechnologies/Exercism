class SavingsAccount
    def self.interest_rate(balance)
        case balance
        when 5000.. then 2.475
        when 1000...5000 then 1.621
        when 0...1000 then 0.5
        else 3.213
        end
    end
    def self.interest(balance)
        balance * interest_rate(balance) / 100
    end
    def self.annual_balance_update(balance)
        balance + interest(balance)
    end
    def self.years_before_desired_balance(current_balance, target_balance)
        cnt = 0
        while current_balance <= target_balance
            current_balance = annual_balance_update(current_balance)
            cnt += 1
        end
        cnt
    end
end


import java.util.concurrent.atomic.AtomicInteger

class BankAccount {
    private AtomicInteger balance

    void open() {
        balance = new AtomicInteger()
    }

    void close() {
        balance = null
    }

    void deposit(int amount) {
        if (amount < 0) throw new Exception()
        balance.addAndGet(amount)
    }

    void withdraw(int amount) {
        if (amount < 0) throw new Exception()
        balance.getAndUpdate {
            int newBalance = it - amount
            if (newBalance < 0) throw new Exception()
            
            newBalance
        }
    }

    int getBalance() {
        balance.get()
    }
}

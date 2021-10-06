import java.util.concurrent.atomic.AtomicLong

class BankAccount {
    private var _b = AtomicLong(0L)
    var open = true
    val balance: Long
        get() {
            check(open)

            return _b.get()
        }

    fun adjustBalance(amount: Long) {
        check(open)
        _b.addAndGet(amount)
    }

    fun close() {
        open = false
    }
}

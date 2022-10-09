import java.util.concurrent.atomic.AtomicInteger

trait BankAccount {
  def closeAccount(): Unit
  def getBalance: Option[Int]
  def incrementBalance(increment: Int): Option[Int]
}
class BankAccountImpl() extends BankAccount {
  private var balance: Option[AtomicInteger] = Some(new AtomicInteger(0))
  def closeAccount(): Unit = balance = None
  def getBalance = balance.map(_.intValue())
  def incrementBalance(increment: Int) = balance.map(_.addAndGet(increment))
}
object Bank {
  def openAccount() = new BankAccountImpl()
}

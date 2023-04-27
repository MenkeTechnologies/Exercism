require "spec"
require "../src/*"

describe "BankAccount" do
  it "Newly opened account has zero balance" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.balance.should eq 0
  end

  it "Single deposit" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)
    bank_account.balance.should eq 100
  end

  it "Multiple deposits" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)
    bank_account.deposit(50)
    bank_account.balance.should eq 150
  end

  it "Withdraw once" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)
    bank_account.withdraw(75)
    bank_account.balance.should eq 25
  end

  it "Withdraw twice" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)
    bank_account.withdraw(80)
    bank_account.withdraw(20)
    bank_account.balance.should eq 0
  end

  it "Can do multiple operations sequentially" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)
    bank_account.deposit(110)
    bank_account.withdraw(200)
    bank_account.deposit(60)
    bank_account.withdraw(50)
    bank_account.balance.should eq 20
  end

  it "Cannot check balance of closed account" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.close

    expect_raises(ArgumentError) do
      bank_account.balance
    end
  end

  it "Cannot deposit into closed account" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.close

    expect_raises(ArgumentError) do
      bank_account.deposit(50)
    end
  end

  it "Cannot deposit into unopened account" do
    bank_account = BankAccount.new

    expect_raises(ArgumentError) do
      bank_account.deposit(50)
    end
  end

  it "Cannot withdraw from closed account" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.close

    expect_raises(ArgumentError) do
      bank_account.withdraw(50)
    end
  end

  it "Cannot close an account that was not opened" do
    bank_account = BankAccount.new

    expect_raises(ArgumentError) do
      bank_account.close
    end
  end

  it "Cannot open an already opened account" do
    bank_account = BankAccount.new
    bank_account.open

    expect_raises(ArgumentError) do
      bank_account.open
    end
  end

  it "Reopened account does not retain balance" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(50)
    bank_account.close
    bank_account.open
    bank_account.balance.should eq 0
  end

  it "Cannot withdraw more than deposited" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(25)

    expect_raises(ArgumentError) do
      bank_account.withdraw(50)
    end
  end

  it "Cannot withdraw negative" do
    bank_account = BankAccount.new
    bank_account.open
    bank_account.deposit(100)

    expect_raises(ArgumentError) do
      bank_account.withdraw(-50)
    end
  end

  it "Cannot deposit negative" do
    bank_account = BankAccount.new
    bank_account.open

    expect_raises(ArgumentError) do
      bank_account.deposit(-50)
    end
  end

  it "Can handle concurrent transactions" do
    bank_account = BankAccount.new
    bank_account.open
    channel = Channel(Int32).new
    1000.times do
      spawn do
        begin
          bank_account.deposit(1)
          bank_account.balance.should eq 1
          channel.send(0)
        rescue
          channel.send(1)
        end
      end

      spawn do
        begin
          bank_account.withdraw(1)
          bank_account.balance.should eq 0
          channel.send(0)
        rescue exception
          channel.send(1)
        end
      end

      channel.receive.should eq 0
    end

    1000.times { Fiber.yield }
    bank_account.balance.should eq 0
  end
end

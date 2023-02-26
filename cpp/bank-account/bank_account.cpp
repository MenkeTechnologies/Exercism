#include "bank_account.h"
#include <stdexcept>

namespace Bankaccount {
    Bankaccount::Bankaccount() : account_open{false}, account_balance{} {}


    void Bankaccount::open() {
        if (account_open) throw runtime_error("Error: Trying to open an already opened account.");
        account_balance = 0;
        account_open = true;
    }

    int Bankaccount::balance() {
        if (!account_open) throw runtime_error("Error: Trying to get balance of a closed account.");
        return account_balance;
    }

    void Bankaccount::deposit(int p_amount) {
        if (!account_open) throw runtime_error("Error: Trying to deposit on a closed account.");
        if (p_amount < 0) throw runtime_error("Error: Trying to deposit a negative amount.");
        balance_mutex.lock();
        account_balance += p_amount;
        balance_mutex.unlock();
    }

    void Bankaccount::withdraw(int p_amount) {
        if (!account_open) throw runtime_error("Error: Trying to withdraw on a closed account.");
        if (p_amount < 0) throw runtime_error("Error: Trying to withdraw a negative amount.");
        if (p_amount > account_balance) throw runtime_error("Error: Trying to withdraw more than current balance.");
        balance_mutex.lock();
        account_balance -= p_amount;
        balance_mutex.unlock();
    }

    void Bankaccount::close() {
        if (!account_open) throw runtime_error("Trying to close an account that is not open.");
        account_open = false;
    }
}

#pragma once

#include <mutex>

using namespace std;

namespace Bankaccount {

    class Bankaccount {
        bool account_open;
        int account_balance;
        mutex balance_mutex;
    public:
        Bankaccount();

        void open();

        void close();

        void deposit(int);

        void withdraw(int);

        int balance();

    };

}

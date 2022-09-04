from threading import Lock


class BankAccount:
    def __init__(self):
        self.mutex = Lock()
        self.bal = 0
        self.locked = False

    def get_balance(self):
        with self.mutex:
            if not self.locked:
                raise ValueError("account not open")
            return self.bal

    def open(self):
        with self.mutex:
            if self.locked:
                raise ValueError("account already open")
            self.locked = True

    def deposit(self, amt):
        if amt < 0:
            raise ValueError("amount must be greater than 0")
        with self.mutex:
            if not self.locked:
                raise ValueError("account not open")
            self.bal += amt

    def withdraw(self, amt):
        with self.mutex:
            if not self.locked:
                raise ValueError("account not open")
            if amt > self.bal:
                raise ValueError("amount must be less than balance")
            if amt < 0:
                raise ValueError("amount must be greater than 0")
            self.bal -= amt

    def close(self):
        with self.mutex:
            if not self.locked:
                raise ValueError("account not open")
            self.locked = False
            self.bal = 0

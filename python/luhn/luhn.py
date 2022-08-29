import re


class Luhn:
    def __init__(self, card_num):
        self.num = "".join(str(card_num).split())

    def acc(self, i, c):
        dbl = int(c)
        if i % 2 == 1:
            dbl *= 2
        if dbl > 9:
            dbl -= 9
        return dbl

    def valid(self):
        if len(self.num) < 2 or re.search(r"\D", self.num) is not None:
            return False
        return sum(self.acc(i, c) for i, c in enumerate(self.num[::-1])) % 10 == 0

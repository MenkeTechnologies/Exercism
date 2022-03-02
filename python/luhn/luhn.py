import re


class Luhn:
    def __init__(self, card_num):
        self.num = "".join(str(card_num).split())

    def acc(self, i, ch):
        dbl = int(ch)
        if i % 2 == 1:
            dbl *= 2
        if dbl > 9:
            dbl -= 9
        return dbl

    def valid(self):
        if len(self.num) < 2 or re.search(r"\D", self.num) != None:
            return False
        return sum(self.acc(i, ch) for i, ch in enumerate(self.num[::-1])) % 10 == 0

import re


class PhoneNumber:
    REGEX = re.compile(r"^\s*\+?(\d)?\s*\(?(\d{3})\)?[-.\s]*(\d{3})[-.\s]*(\d{4})\s*$")
    LET = re.compile(r"[a-z]")
    PUNCT = re.compile(r"[^\d()+-]")

    def __init__(self, n):

        if len(n) < 10:
            raise ValueError("incorrect number of digits")

        search = self.REGEX.search(n.strip())
        if search is None:
            if re.compile(self.LET).search(n):
                raise ValueError("letters not permitted")
            if re.compile(self.PUNCT).search(n):
                raise ValueError("punctuations not permitted")
            raise ValueError("more than 11 digits")
        self.cc, self.area_code, self.exchange, self.subscriber = search.groups()
        self.number = self.area_code + self.exchange + self.subscriber
        self.tot = self.cc or "" + self.number

        if self.area_code[0] == "0":
            raise ValueError("area code cannot start with zero")
        if self.area_code[0] == "1":
            raise ValueError("area code cannot start with one")
        if self.exchange[0] == "0":
            raise ValueError("exchange code cannot start with zero")
        if self.exchange[0] == "1":
            raise ValueError("exchange code cannot start with one")
        if self.cc != None and self.cc != "1":
            raise ValueError("11 digits must start with 1")

    def pretty(self):
        return f"({self.area_code})-{self.exchange}-{self.subscriber}"

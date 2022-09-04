class Clock:
    def __init__(self, hr, min):
        self.hr = hr
        self.min = min
        self.hr += self.min // 60
        self.min %= 60
        self.hr %= 24

    def __repr__(self):
        return f"Clock({self.hr}, {self.min})"

    def __str__(self):
        return f"{self.hr:02}:{self.min:02}"

    def __eq__(self, other):
        return other.hr == self.hr and other.min == self.min

    def __add__(self, minutes):
        return Clock(self.hr, self.min + minutes)

    def __sub__(self, minutes):
        return Clock(self.hr, self.min - minutes)

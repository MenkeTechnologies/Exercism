import string
import random


class Robot:
    name_list = []

    def __init__(self):
        self.name = None
        self.reset()

    def reset(self):
        while True:
            self.name = (''.join(random.choices(string.ascii_uppercase, k=2) + random.choices(string.digits, k=3)))
            if self.name in Robot.name_list:
                break
            Robot.name_list.append(self.name)

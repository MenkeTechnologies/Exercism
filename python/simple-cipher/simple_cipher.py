import random
from string import ascii_lowercase as letters
from itertools import cycle

STOP = 100
A = ord('a')
ALPHABET_LEN = 26


class Cipher:
    def __init__(self, key=None):
        if key is None:
            self.key = "".join(random.choice(letters) for _ in range(STOP))
        else:
            self.key = key

    def encode(self, text):
        encoded = []
        for c1, c2 in zip(text, cycle(self.key)):
            encoded.append(letters[(ord(c1) % A + ord(c2) % A) % ALPHABET_LEN])
        return "".join(encoded)

    def decode(self, text):
        decoded = []
        for c1, c2 in zip(text, cycle(self.key)):
            decoded.append(letters[(ord(c1) % A - ord(c2) % A) % ALPHABET_LEN])
        return "".join(decoded)

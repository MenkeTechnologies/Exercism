from string import ascii_lowercase

TRANTAB = str.maketrans(ascii_lowercase, ascii_lowercase[::-1])


def encode(s):
    alnum = "".join([c for c in s.lower() if c.isalnum()])
    spaced = ' '.join(alnum[i:i + 5] for i in range(0, len(alnum), 5))
    return spaced.translate(TRANTAB)


def decode(string):
    return string.replace(" ", "").translate(TRANTAB)

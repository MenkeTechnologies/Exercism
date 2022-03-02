import re


def abbreviate(words):
    return ''.join(w.upper() for w in re.findall(r"(?:(?<=\s|^'|-|_)|^)[A-Za-z]", words))

import re


def is_isogram(s):
    return not re.search(r'([a-z]).*\1', s.lower())

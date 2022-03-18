import re


def is_valid(isbn):
    if not re.compile(r"^\d-?\d{3}-?\d{5}-?[\dX]$").match(isbn):
        return False

    sum = 0
    for i, c in enumerate(isbn.replace("-", "")[::-1]):
        if c == 'X':
            sum += 10
        else:
            sum += int(c) * (i + 1)

    return sum % 11 == 0

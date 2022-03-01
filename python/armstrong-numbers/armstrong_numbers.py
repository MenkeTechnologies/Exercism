def is_armstrong_number(number):
    li = list(str(number))
    return sum(map(lambda s: pow(int(s), len(li)), li)) == number

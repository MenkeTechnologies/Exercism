def valid(sides):
    sortt = sorted(sides)
    return all(s > 0 for s in sortt) and sortt[0] + sortt[1] >= sortt[2]


def equilateral(sides):
    sett = set(sides)
    return valid(sides) and len(sett) == 1


def isosceles(sides):
    sett = set(sides)
    return valid(sides) and len(sett) <= 2


def scalene(sides):
    sett = set(sides)
    return valid(sides) and len(sett) == 3

SUBLIST = 1
SUPERLIST = 2
EQUAL = 3
UNEQUAL = 4


def sublist(lstA, lstB):
    s1 = ",".join(map(str, lstA)) + ","
    s2 = ",".join(map(str, lstB)) + ","

    if s1 == s2:
        return EQUAL
    if s1 in s2:
        return SUBLIST
    if s2 in s1:
        return SUPERLIST

    return UNEQUAL

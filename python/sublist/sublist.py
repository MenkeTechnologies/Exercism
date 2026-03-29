SUBLIST = 1
SUPERLIST = 2
EQUAL = 3
UNEQUAL = 4


def sublist(lstA, lstB):
    list_one_check = ",".join(map(str, lstA)) + ","
    list_two_check = ",".join(map(str, lstB)) + ","

    if list_one_check == list_two_check:
        return EQUAL
    if list_one_check in list_two_check:
        return SUBLIST
    if list_two_check in list_one_check:
        return SUPERLIST

    return UNEQUAL

def append(list1, list2):
    return list1 + list2


def concat(lists):
    return [l for sl in lists for l in sl]


def filter(function, list):
    r = []
    for i in list:
        if function(i):
            r.append(i)
    return r


def length(list):
    return len(list)


def map(function, list):
    r = []
    for i in list:
        r.append(function(i))
    return r


def foldl(function, list, initial):
    r = initial
    for i in list:
        r = function(r, i)
    return r


def foldr(function, list, initial):
    r = initial
    for i in reverse(list):
        r = function(i, r)
    return r


def reverse(list):
    return list[::-1]

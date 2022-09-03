def find(lst, search):
    lo, hi = 0, len(lst) - 1
    while lo <= hi:
        index = (lo + hi) // 2
        if lst[index] == search:
            return index
        elif lst[index] > search:
            hi = index - 1
        else:
            lo = index + 1
    raise ValueError("value not in array")

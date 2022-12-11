def square_root(number):
    cnt = 0
    while cnt ** 2 < number:
        cnt += 1
    return cnt

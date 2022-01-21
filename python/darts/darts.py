def score(x, y):
    dist = pow(pow(x, 2) + pow(y, 2), 0.5)

    if dist <= 1:
        return 10

    if dist <= 5:
        return 5

    if dist <= 10:
        return 1

    return 0

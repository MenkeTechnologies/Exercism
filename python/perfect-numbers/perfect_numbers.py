def classify(number):
    if number < 1:
        raise ValueError('Classification is only possible for positive integers.')
    su = sum(filter(lambda n: number % n == 0, range(1, number - 1)))
    if su == number:
        return "perfect"
    elif su > number:
        return "abundant"
    else:
        return "deficient"

def square_of_sum(number):
    return pow(sum(range(1, number + 1)), 2)


def sum_of_squares(number):
    return sum(map(lambda s: pow(s, 2), range(1, number + 1)))


def difference_of_squares(number):
    return square_of_sum(number) - sum_of_squares(number)

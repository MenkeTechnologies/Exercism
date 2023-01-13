from functools import reduce


def rebase(input_base, digits, output_base):
    if input_base < 2:
        raise ValueError("input base must be >= 2")
    if output_base < 2:
        raise ValueError("output base must be >= 2")
    if any(d >= input_base for d in digits):
        raise ValueError("all digits must satisfy 0 <= d < input base")
    if any(d < 0 for d in digits):
        raise ValueError("all digits must satisfy 0 <= d < input base")
    int_sum = reduce(lambda acc, n: acc * input_base + n, digits, 0)
    if int_sum == 0:
        return [0]
    new_digits = []
    while int_sum > 0:
        new_digits.insert(0, int_sum % output_base)
        int_sum = int_sum // output_base
    return new_digits

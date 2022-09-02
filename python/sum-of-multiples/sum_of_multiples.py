def sum_of_multiples(limit, multiples):
    return sum(filter(lambda n: any(m != 0 and n % m == 0 for m in multiples), range(limit)))

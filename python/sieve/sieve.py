def primes(limit):
    table = set(range(2, limit + 1))
    result = []
    while len(table):
        min_val = min(table)
        result.append(min_val)
        to_sub = set(range(min_val, limit + 1, min_val))
        table -= to_sub
    return result

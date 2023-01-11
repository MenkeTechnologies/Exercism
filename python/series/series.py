def slices(digits, length):
    if length < 1:
        raise ValueError(f"slice length cannot be {'zero' if length == 0 else 'negative'}")
    if not digits:
        raise ValueError('series cannot be empty')
    if len(digits) < length:
        raise ValueError('slice length cannot be greater than series length')
    number_of_series = len(digits) - length + 1
    return [digits[n:n + length] for n in range(number_of_series)]

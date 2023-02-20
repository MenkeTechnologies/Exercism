
func toDigits(n, b: int): seq[int] =
    var dup = n
    while dup > 0:
        result.insert(dup mod b, 0)
        dup = int(dup / b)

func fromDigits(digits: openArray[int], input_base: int): int =
    for n in digits:
        if n < 0: raise newException(ValueError, "Negative digit")
        if n >= input_base: raise newException(ValueError, "Invalid positive digit for base")
        result = result * input_base + n

func convert*(inputDigits: openArray[int], inputBase, outputBase: int): seq[int] =
    if inputBase < 2: raise newException(ValueError, "Invalid input base")
    if outputBase < 2: raise newException(ValueError, "Invalid output base")
    result = toDigits(fromDigits(inputDigits, inputBase), outputBase)
    if result.len == 0: result = @[0]

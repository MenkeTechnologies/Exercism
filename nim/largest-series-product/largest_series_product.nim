proc largestProduct*(input: string, span: int): int =
  if span notin 0..input.len:
    raise newException(ValueError, "bounds")
  for i in 0..input.len - span:
    var product = 1
    for j in 0..<span:
      let digit = ord(input[i + j]) - ord('0')
      if digit notin 0..9:
        raise newException(ValueError, "wrong series")
      product *= digit
    result = max(result, product)


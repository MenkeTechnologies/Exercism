public function squareOfSum(integer limit)
  integer sum = 0
  for n = 1 to limit do
      sum += n
  end for
  return sum * sum
end function

public function sumOfSquares(integer limit)
  integer sum = 0
  for n = 1 to limit do
      sum += n * n
  end for
  return sum
end function

public function differenceOfSquares(integer n)
  return squareOfSum(n) - sumOfSquares(n)
end function

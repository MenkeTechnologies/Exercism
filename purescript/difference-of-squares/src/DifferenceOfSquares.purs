module DifferenceOfSquares
  (differenceOfSquares, squareOfSum, sumOfSquares) where
import Prelude
import Data.Array (range)
import Data.Foldable (sum)

square :: Int -> Int
square x = x * x

squareOfSum :: Int -> Int
squareOfSum n = square $ sum $ range 1 n

sumOfSquares :: Int -> Int
sumOfSquares n = sum $ square <$> range 1 n

differenceOfSquares :: Int -> Int
differenceOfSquares n = (squareOfSum n) - (sumOfSquares n)

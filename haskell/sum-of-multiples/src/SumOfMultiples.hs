module SumOfMultiples (sumOfMultiples) where

divides :: Integer -> Integer -> Bool
divides n m = (n `mod` m) == 0

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum [x | x <- [1..limit-1],
               any (divides x) [f | f <- factors, f > 0]]

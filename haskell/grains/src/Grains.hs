module Grains (square, total) where
  
import Data.Maybe (fromMaybe)

square :: Integer -> Maybe Integer
square n = if elem n [1..64] then Just $ 2^(n - 1) else Nothing

total :: Integer
total = sum (map ((fromMaybe 0) . square) [1..64])

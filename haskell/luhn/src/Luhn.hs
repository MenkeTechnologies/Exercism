module Luhn (isValid) where
import Data.Char (isDigit, digitToInt)

isValid :: String -> Bool
isValid n | length (normalize n) < 2 = False
          | any (not . (\x -> x==' ' || isDigit x)) n = False
          | otherwise = mod (luhn $ normalize n) 10 == 0
  where
    normalize = map digitToInt . reverse . filter isDigit
    luhn (x:y:xs) = x + (if y<5 then 2*y else 2*y-9) + luhn xs
    luhn [x] = x
    luhn [] = 0

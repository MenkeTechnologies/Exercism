module Base (Error (..), rebase) where
import Data.List (find)

data Error a = InvalidInputBase | InvalidOutputBase | InvalidDigit a
  deriving (Show, Eq)

rebase :: Integral a => a -> a -> [a] -> Either (Error a) [a]
rebase inputBase outputBase inputDigits
  | inputBase < 2 = Left InvalidInputBase
  | outputBase < 2 = Left InvalidOutputBase
  | otherwise = case find (\n -> n < 0 || n >= inputBase) inputDigits of
      Just n -> Left $ InvalidDigit n
      Nothing -> Right $ to_base (to_int inputDigits inputBase 0) outputBase []
 where
  to_base 0 _ _ = []
  to_base n outputBase acc
    | n < outputBase = n : acc
    | otherwise = to_base (n `div` outputBase ) outputBase ((n `rem` outputBase ) : acc)
  to_int [] _ acc = acc
  to_int (d : tl) inputBase acc = to_int tl inputBase (acc * inputBase + d)

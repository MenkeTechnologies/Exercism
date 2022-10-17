module PhoneNumber
  ( phoneNumber
  ) where
import Prelude
import Data.Array (any, drop, elem, filter, length, (!!))
import Data.CodePoint.Unicode
import Data.Maybe (Maybe(..))
import Data.String

justZero = codePointFromChar '0' # Just
justOne = codePointFromChar '1' # Just

phoneNumber = toCodePointArray >>> filter isNumber >>> isValid >>> (fromCodePointArray <$> _)
  where
    isValid n | length n == 11 && n !! 0 == justOne = drop 1 n # isValid
              | length n /= 10 = Nothing
              | any (_ `elem` [justZero, justOne]) [n !! 0, n !! 3] = Nothing
              | otherwise = Just n

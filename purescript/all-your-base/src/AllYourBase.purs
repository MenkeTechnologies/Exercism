module AllYourBase ( rebase) where
import Data.Array (foldM, head, reverse)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Data.Unfoldable (unfoldr)
import Prelude

rebase _ _ [] = Nothing
rebase inputBase outputBase digits
  | head digits == Just 0 = Nothing
  | inputBase < 2 = Nothing
  | outputBase < 2 = Nothing
  | otherwise =
      unfoldr num2Digits >>> reverse <$> foldM digits2Num 0 digits
    where
        digits2Num acc n
          | n >= inputBase = Nothing
          | n < 0 = Nothing
          | otherwise = Just $ inputBase * acc + n
        num2Digits 0 = Nothing
        num2Digits n = Just $ modDiv n outputBase
        modDiv n d = Tuple (mod n d) (div n d)

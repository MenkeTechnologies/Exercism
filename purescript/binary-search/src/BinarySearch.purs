module BinarySearch
  ( find
  ) where
import Prelude
import Data.Array (length, unsafeIndex)
import Data.Maybe (Maybe(..))
import Partial.Unsafe (unsafePartial)

find target ary = aux 0 $ length ary where
  aux lo hi
    | lo > hi = Nothing
    | otherwise =
      let mid = (lo + hi) / 2 in
      case unsafePartial $ unsafeIndex ary mid of
        elem | elem > target -> aux lo (mid - 1)
        elem | elem < target -> aux (mid + 1) hi
        otherwise -> Just mid

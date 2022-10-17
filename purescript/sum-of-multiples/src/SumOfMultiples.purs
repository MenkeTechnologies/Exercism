module SumOfMultiples
  ( sumOfMultiples
  ) where
import Prelude
import Data.Array (any, filter, (..))
import Data.Foldable (sum)

sumOfMultiples multiples n =
    filter
        ( \c ->
            any (mod c >>> eq 0) multiples
        )
        (1 .. (n - 1)) # sum


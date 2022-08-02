module CollatzConjecture (collatz) where
import Prelude
import Data.Int (even)
import Data.List.Lazy (iterate, length, takeWhile)
import Data.Maybe (Maybe(..))

collatz ∷ Int -> Maybe Int
collatz n
  | n < 1     = Nothing
  | otherwise = Just
                <<< length
                <<< takeWhile (_ > 1)
                $ iterate collatzStep n

collatzStep :: Int -> Int
collatzStep n
  | even n = n / 2
  | otherwise = 3 * n + 1

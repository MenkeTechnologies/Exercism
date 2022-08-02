module Hamming
  ( distance
  ) where
import Prelude
import Data.Maybe (Maybe(..))
import Data.String (CodePoint, toCodePointArray)
import Data.Array (length, zipWith, filter)

distance :: String -> String -> Maybe Int
distance s1 s2 =
  if length a1 /= length a2 then Nothing
  else Just $ length $ filter identity $ zipWith (/=) a1 a2
  where a1 = toCodePointArray s1
        a2 = toCodePointArray s2

module LargestSeriesProduct (largestProduct) where

import Prelude
import Data.Array (length, slice)
import Data.CodePoint.Unicode (decDigitToInt)
import Data.Enum (enumFromTo)
import Data.Foldable (maximum, product)
import Data.Maybe (Maybe(..))
import Data.String (length) as String
import Data.String.CodePoints (toCodePointArray)
import Data.Traversable (sequence)

largestProduct :: String -> Int -> Maybe Int
largestProduct s window
  | window < 0 = Nothing
  | window > String.length s = Nothing
  | otherwise = case digitsToInts s of
                  Just digits -> maximum $ productsOfSlices digits window
                  _ -> Nothing

digitsToInts :: String -> Maybe (Array Int)
digitsToInts = toCodePointArray >>> map decDigitToInt >>> sequence

productsOfSlices :: Array Int -> Int -> Array Int
productsOfSlices s window = map calcProduct $ enumFromTo 0 (length s - window)
  where calcProduct i = product $ slice i (i + window) s

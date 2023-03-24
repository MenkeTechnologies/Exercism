module BinarySearch (find) where
import Data.Array

find :: Ord a => Array Int a -> a -> Maybe Int
find ary target = aux (bounds ary) ary target

aux :: Ord a => (Int, Int) -> Array Int a -> a -> Maybe Int
aux (lo, hi) ary target
  | lo > hi = Nothing
  | otherwise = case compare target (ary ! mid) of
                    GT -> aux (mid + 1, hi) ary target
                    LT -> aux (lo, mid - 1) ary target
                    EQ -> Just mid
  where mid = (lo + hi) `div` 2

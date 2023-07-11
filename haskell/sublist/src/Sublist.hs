module Sublist (sublist) where

import Data.List (isInfixOf)

sublist :: Eq a => [a] -> [a] -> Maybe Ordering
sublist xs ys
  | xs == ys = Just EQ
  | isInfixOf xs ys = Just LT
  | isInfixOf ys xs = Just GT
  | otherwise = Nothing


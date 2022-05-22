module Strain (keep, discard) where

keep :: (a -> Bool) -> [a] -> [a]
keep p = foldr(\n -> if p n then (n:) else id) []

discard :: (a -> Bool) -> [a] -> [a]
discard p = keep (not . p)


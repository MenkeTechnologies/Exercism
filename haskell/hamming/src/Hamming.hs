module Hamming (distance) where

boolToInt :: Bool -> Int
boolToInt b = if b then 1 else 0

distance :: String -> String -> Maybe Int
distance a b =
    if length a /= length b
        then Nothing
    else
        Just $ sum $ map boolToInt $ zipWith (/=) a b

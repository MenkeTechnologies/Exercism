module ReverseString (reverseString) where

reverseString :: String -> String
reverseString = foldl (flip (:)) []

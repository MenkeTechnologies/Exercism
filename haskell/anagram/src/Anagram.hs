module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor a = filter (anagram a)

anagram :: [Char] -> [Char] -> Bool
anagram s1 s2 = lc1 /= lc2 && sort lc1 == sort lc2
    where
        lc1 = map toLower s1
        lc2 = map toLower s2



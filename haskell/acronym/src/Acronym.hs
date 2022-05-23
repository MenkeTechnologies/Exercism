module Acronym (abbreviate) where


import Data.Char
abbreviate :: String -> String
abbreviate = map (toUpper . head) . words . wordify

wordify :: String -> String
wordify (x : y : xs)
  | isLower x && isUpper y = x : ' ' : y : wordify xs
wordify ('_' : xs) = ' ' : xs
wordify ('-' : xs) = ' ' : xs
wordify (x : xs) = x : wordify xs
wordify [] = []

module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map
import Data.Char

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show, Read)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs
  | isValid xs = Right $ count xs
  | otherwise = Left xs
  where
    isValid = all (`elem` "ACGT")
count :: String -> Map Nucleotide Int
count xs = fromListWith (+) [(read [toUpper c], 1) | c <- xs]


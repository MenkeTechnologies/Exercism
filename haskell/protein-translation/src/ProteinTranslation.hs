module ProteinTranslation(proteins) where
import Data.Maybe (isJust)

proteins :: String -> Maybe [String]
proteins = sequence . takeWhile isJust . map translate . take3

translate :: String -> Maybe String
translate c
  | c == "AUG"                            = Just "Methionine"
  | c `elem` ["UUU", "UUC"]               = Just "Phenylalanine"
  | c `elem` ["UUA", "UUG"]               = Just "Leucine"
  | c `elem` ["UCU", "UCC", "UCA", "UCG"] = Just "Serine"
  | c `elem` ["UAU", "UAC"]               = Just "Tyrosine"
  | c `elem` ["UGU", "UGC"]               = Just "Cysteine"
  | c == "UGG"                            = Just "Tryptophan"
  | otherwise                             = Nothing

take3 :: [a] -> [[a]]
take3 [] = []
take3 a = take 3 a : take3 (drop 3 a)

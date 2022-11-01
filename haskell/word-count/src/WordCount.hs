module WordCount (wordCount) where

import Data.Bool (bool)
import Data.Char (isAlphaNum, toLower)
import Data.List (group, sort)
import Data.Monoid (All(..), Any(..), getAll, getAny)

wordCount :: String -> [(String, Int)]
wordCount = map ((,) <$> head <*> length) . group . sort . fmap removeQuote . words . fmap normalize

normalize :: Char -> Char
normalize = bool <$> const ' ' <*> toLower <*> getAny . foldMap (Any .) [('\'' ==), isAlphaNum]

removeQuote :: String -> String
removeQuote = bool <$> id <*> init . tail <*> getAll . foldMap (All .) [('\'' ==) . head, ('\'' ==) . last]


module RnaTranscription
  ( toRNA
  ) where


import Prelude
import Data.Maybe (Maybe(..))
import Data.String.CodeUnits (fromCharArray, toCharArray)
import Data.Traversable (sequence, traverse)

toRNA :: String -> Maybe String
toRNA = map fromCharArray <<< traverse toRNAChar <<< toCharArray

toRNAChar :: Char -> Maybe Char
toRNAChar c = case c of
      'G' -> Just 'C'
      'C' -> Just 'G'
      'T' -> Just 'A'
      'A' -> Just 'U'
      _ -> Nothing

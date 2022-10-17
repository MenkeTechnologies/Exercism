module Acronym
  ( abbreviate
  ) where
import Prelude
import Data.Array (cons, filter)
import Data.Maybe (Maybe(..))
import Data.String
import Data.String.CodePoints

isUpper c = c >= codePointFromChar 'A' && c <= codePointFromChar 'Z'

abbreviate = toUpper <<< joinWith "" <<< map firstAndCaps <<< split (Pattern " ")
  where firstAndCaps s = case uncons s of
          Just uc -> fromCodePointArray (cons uc.head (filter isUpper (toCodePointArray uc.tail)))
          Nothing -> s


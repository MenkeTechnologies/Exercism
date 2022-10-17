module Acronym
  ( abbreviate
  ) where
import Prelude
import Data.Array (cons, filter)
import Data.Maybe (Maybe(..))
import Data.String
import Data.String.CodePoints

isUpper c = c >= codePointFromChar 'A' && c <= codePointFromChar 'Z'

abbreviate = split (Pattern " ") >>> map firstAndCaps >>> joinWith "" >>> toUpper
  where firstAndCaps s = case uncons s of
          Just uc -> toCodePointArray uc.tail # filter isUpper # cons uc.head # fromCodePointArray
          Nothing -> s


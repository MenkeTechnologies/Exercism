module Isogram
  ( isIsogram
  ) where
import Prelude
import Data.Array
import Data.Array.NonEmpty as NE
import Data.Char.Unicode
import Data.String as S
import Data.String.CodeUnits

isIsogram :: String -> Boolean
isIsogram = S.toLower
            >>> toCharArray
            >>> filter isAlpha
            >>> group'
            >>> all (NE.length >>> (_ == 1))

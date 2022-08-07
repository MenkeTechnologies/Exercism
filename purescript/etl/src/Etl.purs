module Etl
  ( transform
  ) where
import Prelude
import Data.Array (concatMap)
import Data.Map (Map, fromFoldable, toUnfoldable)
import Data.String (toLower)
import Data.String.CodeUnits (fromCharArray, toCharArray)
import Data.Tuple (Tuple(..))

transform :: Map Int (Array Char) -> Map Char Int
transform =
    toUnfoldable >>>
    concatMap convertOne >>>
    fromFoldable
  where
    convertOne (Tuple n chars) = charArrayToLower chars # map (\c -> Tuple c n)

charArrayToLower :: Array Char -> Array Char
charArrayToLower = fromCharArray >>> toLower >>> toCharArray

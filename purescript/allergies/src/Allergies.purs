module Allergies
  ( allergicTo
  , list
  ) where
import Data.Array (elemIndex, filter)
import Data.Int.Bits (and, shl)
import Data.Maybe (Maybe(..))
import Prelude

allergens :: Array String
allergens = [ "eggs"
            , "peanuts"
            , "shellfish"
            , "strawberries"
            , "tomatoes"
            , "chocolate"
            , "pollen"
            , "cats"]

allergicTo :: Int -> String -> Boolean
allergicTo mask allergy = case allergy `elemIndex` allergens of
  Nothing -> false
  Just i -> (1 `shl` i) `and` mask > 0

list :: Int -> Array String
list mask = filter (allergicTo mask) allergens

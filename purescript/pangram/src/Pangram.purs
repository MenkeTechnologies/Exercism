module Pangram
  ( isPangram
  ) where

import Prelude
import Data.String (toLower)
import Data.Array (length, nub, filter)
import Data.String.CodeUnits (toCharArray)

isPangram :: String -> Boolean
isPangram s = 26 == (length $ nub $ filter (\c -> c >= 'a' && c <= 'z') $ toCharArray $ toLower s)

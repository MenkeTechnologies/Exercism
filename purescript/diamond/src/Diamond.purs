module Diamond
  ( rows
  ) where

import Prelude
import Data.Array (drop, elemIndex, replicate, reverse, (!!), (..))
import Data.Enum (enumFromTo)
import Data.Maybe (Maybe, fromMaybe)
import Data.String.CodeUnits (fromCharArray)

alphabet = enumFromTo 'A' 'Z'

charIndex c = elemIndex c alphabet

charAt n = alphabet !! n

rows c = fromCharArray <$> lines
  where 
    rank = fromMaybe 0 (charIndex c)
    mkRow = mirror <<< row rank
    lines = mirror <<< map mkRow $ (rank .. 0)

mirror c = reverse c <> drop 1 c

row size rank = before <> [char] <> after
  where
    emptyChar = ' '
    char = fromMaybe emptyChar (charAt rank)
    before = replicate (rank) emptyChar
    after = replicate (size - rank) emptyChar
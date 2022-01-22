module Isogram (isIsogram) where

import Data.Char (isAlpha, toLower)

import Data.List (groupBy, sort)

isIsogram :: String -> Bool
isIsogram = all((==1).length).groupBy(==).sort.map toLower.filter isAlpha

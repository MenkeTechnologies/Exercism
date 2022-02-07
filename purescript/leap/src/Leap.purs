module Leap where

import Prelude

isLeapYear :: Int -> Boolean
isLeapYear y = y `mod` 4 == 0 && y `mod` 100 /= 0 || y `mod` 400 == 0

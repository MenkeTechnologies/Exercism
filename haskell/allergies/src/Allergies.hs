module Allergies (Allergen(..), allergies, isAllergicTo) where

import Data.Bits

data Allergen = Eggs
              | Peanuts
              | Shellfish
              | Strawberries
              | Tomatoes
              | Chocolate
              | Pollen
              | Cats
              deriving (Eq, Show, Enum)

isAllergicTo :: Allergen -> Int -> Bool
isAllergicTo a n = testBit n (fromEnum a)

allergies :: Int -> [Allergen]
allergies n = filter (`isAllergicTo` n) [Eggs .. Cats]

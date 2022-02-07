module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

expectedMinutesInOven :: Integer
expectedMinutesInOven = 40

preparationTimeInMinutes :: Int -> Int
preparationTimeInMinutes x = x * 2

elapsedTimeInMinutes :: Int -> Int -> Int
elapsedTimeInMinutes x y = preparationTimeInMinutes x + y

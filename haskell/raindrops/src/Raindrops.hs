module Raindrops (convert) where

drops :: [(Int, String)]
drops = [(3, "Pling"), (5, "Plang"), (7, "Plong")]

convert :: Int -> String
convert n
  | null rain = show n
  | otherwise = rain
  where rain = concat [sound | (factor, sound) <- drops, n `rem` factor == 0]

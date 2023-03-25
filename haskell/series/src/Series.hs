module Series (slices) where

slices :: Int -> String -> [[Int]]
slices 0 [] = [[]]
slices _ [] = []
slices n xs
  | length xs < n = []
  | otherwise = map (\x -> read [x] :: Int) (take n xs) : slices n (tail xs)


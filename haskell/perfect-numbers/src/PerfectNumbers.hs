module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
    | n <= 0 = Nothing
    | n > aliquot = Just Deficient
    | n < aliquot = Just Abundant
    | otherwise = Just Perfect
    where
        aliquot = sum [f | f <- [1..n `div` 2], n `mod` f == 0]

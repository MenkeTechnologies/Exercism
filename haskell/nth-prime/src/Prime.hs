module Prime (nth) where

nth :: Int -> Maybe Integer
nth n
    | n > 0 = Just $ primes !! (n - 1)
    | otherwise = Nothing

primes :: [Integer]
primes = aux [2..]
    where
        aux [] = []
        aux (p:ps) = p : aux [x | x <- ps, mod x p /= 0]

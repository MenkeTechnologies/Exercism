module Roman (numerals) where

nums :: [(String, Integer)]
nums = [ ("M", 1000)
       , ("CM", 900)
       , ("D", 500)
       , ("CD", 400)
       , ("C", 100)
       , ("XC", 90)
       , ("L", 50)
       , ("XL", 40)
       , ("X", 10)
       , ("IX", 9)
       , ("V", 5)
       , ("IV", 4)
       , ("I", 1)
       ]

encode :: Integer -> String
encode 0 = ""
encode n = k ++ encode (n - v)
    where (k, v) = head $ filter ((<= n).snd) nums

numerals :: Integer -> Maybe String
numerals n | n < 0 = Nothing
           | otherwise = Just $ encode n

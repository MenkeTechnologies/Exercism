module Temperature (tempToC, tempToF) where

tempToC :: Integer -> Float
tempToC temp = (/ 1.8) $ fromIntegral $ temp - 32


tempToF :: Float -> Integer
tempToF temp = ceiling $ 1.8 * temp + 32

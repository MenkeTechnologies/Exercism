module SecretHandshake (handshake) where
import Data.Bits (testBit)

handshake :: Int -> [String]
handshake n = (if (testBit n 4) then reverse else id)
              $ map fst
              $ filter (\pair -> testBit n $ snd pair)
              $ zip ["wink","double blink","close your eyes","jump"] [0..]

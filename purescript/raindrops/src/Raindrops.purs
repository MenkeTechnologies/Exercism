module Raindrops
  ( raindrops
  ) where
import Prelude (($), (<$>), (==), mod, show)
import Data.String (joinWith)
import Data.Tuple (Tuple(..), snd)
import Data.Array (filter)

raindrops :: Int -> String
raindrops n = if s == "" then show n else s
  where s = joinWith "" $ snd <$> filter (\(Tuple d _) -> mod n d == 0)
              [Tuple 3 "Pling", Tuple 5 "Plang", Tuple 7 "Plong"]

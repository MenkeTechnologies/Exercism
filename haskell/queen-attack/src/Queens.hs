module Queens (boardString, canAttack) where

boardString :: Maybe (Int, Int) -> Maybe (Int, Int) -> String
boardString white black = unlines
    [ unwords [ board i j | j <- [0 .. 7] ] | i <- [0 .. 7] ]
  where
    board i j | Just (i, j) == white = "W"
              | Just (i, j) == black = "B"
              | otherwise            = "_"

canAttack :: (Int, Int) -> (Int, Int) -> Bool
canAttack (x1, y1) (x2, y2) =
        dx == 0 || dy == 0 || dx == dy
    where
        dx = abs $ x1 - x2
        dy = abs $ y1 - y2

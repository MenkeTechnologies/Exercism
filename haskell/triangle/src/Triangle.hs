module Triangle (TriangleType(..), triangleType) where
import Data.List

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

triangleType :: Float -> Float -> Float -> TriangleType
triangleType a b c
    | x + y < z || x == 0 = Illegal
    | x == y && y == z = Equilateral
    | x == y || y == z = Isosceles
    | otherwise = Scalene
    where
      l = sort [a, b, c]
      x = l !! 0
      y = l !! 1
      z = l !! 2

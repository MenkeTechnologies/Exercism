module ETL (transform) where
import Data.Map (Map, fromList, toList)
import Data.Char

transform :: Map a String -> Map Char a
transform lst = fromList $ concatMap (\(score,letters) -> map (\c -> (toLower c, score)) letters) (toList lst)


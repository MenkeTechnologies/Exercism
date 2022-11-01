module DND ( Character(..)
           , ability
           , modifier
           , character
           ) where
import Data.Ord (Down(..))
import Data.List (sortOn)
import Control.Monad (replicateM)
import Test.QuickCheck (Gen, choose)

data Character = Character
  { strength     :: Int
  , dexterity    :: Int
  , constitution :: Int
  , intelligence :: Int
  , wisdom       :: Int
  , charisma     :: Int
  , hitpoints    :: Int
  }
  deriving (Show, Eq)

fromList :: [Int] -> Character
fromList [str,dex,con,int,wis,chr] = Character str dex con int wis chr (10 + modifier con)
fromList _ = error "Incorrect number of parameters for character"

dice :: Gen Int
dice = choose (1, 6)

modifier :: Int -> Int
modifier = flip (-) 5 . (`div` 2)

ability :: Gen Int
ability = sum . take 3 . sortOn Down <$> replicateM 4 dice

character :: Gen Character
character = fromList <$> replicateM 6 ability


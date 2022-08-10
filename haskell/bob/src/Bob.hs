module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor input
    | null nows = "Fine. Be that way!"
    | isShouting && isAsking = "Calm down, I know what I'm doing!"
    | isShouting = "Whoa, chill out!"
    | isAsking = "Sure."
    | otherwise = "Whatever."
  where
    nows = filter (not . isSpace) input
    letters = filter isLetter nows
    isShouting = all isUpper letters && any isUpper letters
    isAsking = last nows == '?'

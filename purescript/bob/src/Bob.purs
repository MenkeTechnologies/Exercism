module Bob (hey) where
import Prelude
import Data.String (toUpper, toLower, trim, null)
import Data.String.CodeUnits (toCharArray)
import Data.Array (last)
import Data.Maybe (Maybe(..))

hey :: String -> String
hey s =
  if isSilent then
    "Fine. Be that way!"
  else if isQuestion && isYelling then 
    "Calm down, I know what I'm doing!"
  else if isQuestion then
    "Sure."
  else if isYelling then
    "Whoa, chill out!"
  else
    "Whatever."
  where
    isSilent = s # trim # null
    isYelling = s == toUpper s && s /= toLower s
    isQuestion = (s # toCharArray # last) == Just '?'

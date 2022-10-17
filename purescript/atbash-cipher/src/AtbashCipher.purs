module AtbashCipher
  ( decode
  , encode
  ) where
import Prelude
import Data.Array (catMaybes, drop, elem, length, take, (..))
import Data.Char
import Data.Maybe (Maybe(..))
import Data.String
import Data.String.CodeUnits

decode = toCharArray >>> encodeChars >>> fromCharArray >>> Just

encode = toLower >>> toCharArray >>> encodeChars >>> (chunks 5) >>> (fromCharArray <$> _) >>> (joinWith " ") >>> Just

reverse c
  | c `elem` (48 .. 57) = Just c
  | c `elem` (97 .. 122) = Just (122 - c + 97)
  | otherwise = Nothing

encodeChars = ((toCharCode >>> reverse >>> (fromCharCode =<< _)) <$> _) >>> catMaybes

chunks n ary
  | length ary <= n = [ ary ]
  | otherwise = [ take n ary ] <> (chunks n (drop n ary))

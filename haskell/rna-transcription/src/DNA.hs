{-# LANGUAGE LambdaCase #-}

module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA = traverse $ \case
  'G' -> Right 'C'
  'C' -> Right 'G'
  'T' -> Right 'A'
  'A' -> Right 'U'
  c -> Left c


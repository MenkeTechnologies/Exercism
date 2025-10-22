module ReverseString

aux : List Char -> List Char -> List Char
aux acc [] = acc
aux acc (x :: xs) = aux (x :: acc) xs

export
rev : String -> String
rev = pack . (aux []) . unpack
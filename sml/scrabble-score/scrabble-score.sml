fun score word =
  List.foldl (fn (c, acc) =>
                if (Char.contains "AEIOULNRST") (Char.toUpper c) then acc + 1
                else if (Char.contains "DG") (Char.toUpper c) then acc + 2
                else if (Char.contains "BCMP") (Char.toUpper c) then acc + 3
                else if (Char.contains "FHVWY") (Char.toUpper c) then acc + 4
                else if (Char.contains "K") (Char.toUpper c) then acc + 5
                else if (Char.contains "JX") (Char.toUpper c) then acc + 8
                else acc + 10) 0 (String.explode word)

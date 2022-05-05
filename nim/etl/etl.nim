import tables, strutils

func transform*(dict: Table[int, seq[char]]): Table[char, int] =
    for score, letters in dict:
        for l in letters:
            result[l.toLowerAscii] = score

fun vowel0 word = List.exists (fn s => String.isPrefix s word) ["a", "e", "i", "o", "u", "yt", "xr"]

fun clust0 word = List.find (fn s => String.isPrefix s word) ["ch", "qu", "squ", "thr", "th", "sch", "rh"]

fun tr_word (input: string) =
    if vowel0 input then input ^ "ay" else
    case clust0 input of
        SOME(s) => String.extract(input, size s, NONE) ^ s ^ "ay"
      | NONE => String.extract(input, 1, NONE) ^ String.extract(input, 0, SOME(1)) ^ "ay"

fun translate (input: string) =
    (String.concatWith " " o map tr_word o String.tokens Char.isSpace) input


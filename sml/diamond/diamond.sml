fun spaces k = String.implode(List.tabulate(k, fn _ => #" "))

fun rows s =
    let val offset = ord(String.sub(s, 0)) - ord(#"A")
        fun row i =
            let val t = spaces (offset - i)
                val c = String.str (chr (i + 65))
             in if i = 0 then String.concat [t, c, t] else
                String.concat [t, c, spaces (2 * i - 1), c, t]
            end
     in List.tabulate(2 * offset + 1, fn i => row (if i > offset then 2 * offset - i else i))
    end

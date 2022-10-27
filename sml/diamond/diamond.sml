fun rows (input: string): string list =
    let val n = ord(String.sub(input, 0)) - ord(#"A")
        fun spaces k = String.implode(List.tabulate(k, fn _ => #" "))
        fun row i =
            let val t = spaces (n-i)
                val c = String.str (chr (i + 65))
             in if i = 0 then String.concat [t,c,t] else
                String.concat [t,c,spaces (2*i-1),c,t]
            end
     in List.tabulate(2*n+1, fn i => row (if i > n then 2*n-i else i))
    end

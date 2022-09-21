val convert =
  let fun conv_char c =
        let val lc = Char.toLower c
        in if Char.isDigit lc
            then lc
            else chr (ord #"z" + ord #"a" - ord lc)
        end
  in  map conv_char o List.filter Char.isAlphaNum o explode
  end
val decode = implode o convert
val encode =
  let fun groups cl =
        case cl of
          a::b::c::d::e::cs => implode [a, b, c, d, e] :: groups cs
        | [] => []
        | xs => [implode xs]
  in  String.concatWith " " o groups o convert
  end

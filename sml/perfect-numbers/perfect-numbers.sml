datatype classification = Abundant | Deficient | Perfect

fun classify input =
  if input < 1
  then NONE
  else
    let fun aux n acc =
          case (n <= input div 2, input mod n = 0) of
          (true, true) => aux (n + 1) (acc + n)
          | (true, _) => aux (n + 1) acc
          | _ => acc
    in  case Int.compare (aux 1 0, input) of
          LESS    => SOME Deficient
        | EQUAL   => SOME Perfect
        | GREATER => SOME Abundant
    end


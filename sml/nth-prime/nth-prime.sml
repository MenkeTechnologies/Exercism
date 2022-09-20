fun nthPrime n =
    let fun aux n nextCandidate idNextPrime oddPrimesBeforeIdNextPrime =
            if List.exists (fn x => nextCandidate mod x = 0) oddPrimesBeforeIdNextPrime
            then aux n (nextCandidate + 2) idNextPrime oddPrimesBeforeIdNextPrime
            else
                if idNextPrime = n
                then nextCandidate
                else aux n (nextCandidate + 2) (idNextPrime + 1) (oddPrimesBeforeIdNextPrime @ [nextCandidate] )
    in case (n < 1, n = 1) of
        (true, _) => NONE
        | (_, true) => SOME 2
        |  _ => SOME (aux n 3 2 [])
    end

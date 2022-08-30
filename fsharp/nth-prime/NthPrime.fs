module NthPrime

let isPrime num = { 2 .. int (sqrt (float num)) } |> Seq.forall (fun n -> num % n <> 0)

let prime nth =
    Seq.initInfinite ((+) 2)
    |> Seq.filter isPrime
    |> Seq.tryItem (nth - 1)

fun primeFactors limit =
  let fun aux n divisor =
    if n < 2 then []
    else if n mod divisor = 0 then [divisor] @ aux (n div divisor) divisor
    else aux n (divisor + 1)
  in
    aux limit 2
  end

aliquotsum(n) = isindomain(n) && sum([x for x in 1:(div(n, 2)) if rem(n, x) == 0])

isindomain(n) = n > 0 || throw(DomainError("argument $n is not a positive natural number"))

isperfect(n) = aliquotsum(n) == n
isabundant(n) = aliquotsum(n) > n
isdeficient(n) = aliquotsum(n) < n

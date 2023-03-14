sum_of_multiples(limit, factors) =
    sum(unique(Iterators.flatten([[n * f for n in 1:((limit - 1) / f)] for f in factors if f != 0])); init=0)


sub sum-of-multiples ( :@factors, :$limit ) is export {
    (1 ..^ $limit)
    .grep( * %% @factors.grep( * != 0 ).any )
    .sum
}

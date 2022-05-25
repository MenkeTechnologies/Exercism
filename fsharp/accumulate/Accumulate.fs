module Accumulate

let accumulate (f: 'a -> 'b) (input: 'a list): 'b list =
    [for n in input -> f n]

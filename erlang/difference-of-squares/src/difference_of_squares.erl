-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).

-import(lists, [sum/1, seq/2]).

difference_of_squares(_Number) -> square_of_sum(_Number) - sum_of_squares(_Number).

square_of_sum(_Number) -> square(sum(seq(1, _Number))).

sum_of_squares(_Number) -> sum([square(N) || N <- seq(1, _Number)]).

square(N) -> N * N.

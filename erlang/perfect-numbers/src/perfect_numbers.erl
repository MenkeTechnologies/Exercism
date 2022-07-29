-module(perfect_numbers).

-export([classify/1]).


factors(Number) ->
  [X || X <- lists:seq(1, trunc(Number / 2)), Number rem X == 0].

aliquot_sum(Number) ->
  lists:sum(factors(Number)).

classify(Number) when Number > 0 -> classify(Number, aliquot_sum(Number)).

classify(Number, Sum) when Number < Sum -> abundant;
classify(Number, Sum) when Number > Sum -> deficient;
classify(_, _) -> perfect.


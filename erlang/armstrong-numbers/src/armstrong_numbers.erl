-module(armstrong_numbers).

-export([is_armstrong_number/1]).

is_armstrong_number(N) -> N =:= armstrong_sum(N).

armstrong_sum(N) ->
  Digits = digits(N),
  Len = length(Digits),
  lists:foldl(fun(X, Acc) -> Acc + trunc(math:pow(X, Len)) end, 0, Digits).

digits(N) ->
  [X - $0 || X <- integer_to_list(N)].

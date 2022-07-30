-module(grains).
-export([square/1, total/0]).

square(Square) when 1 =< Square, Square =< 64 -> 1 bsl (Square - 1);

square(_) -> {error, "square must be between 1 and 64"}.

total() -> lists:foldl(fun(N, ACC) -> square(N) + ACC end, 0, lists:seq(1, 64)).

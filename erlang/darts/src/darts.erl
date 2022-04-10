-module(darts).

-export([score/2]).

dist(X,Y) -> math:sqrt(X * X + Y * Y).

score(_X, _Y) ->
  D = dist(_X, _Y),
  if
    D =< 1 -> 10;
    D =< 5 -> 5;
    D =< 10 -> 1;
    true -> 0
  end.

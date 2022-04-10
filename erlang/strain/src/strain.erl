-module(strain).

-export([keep/2, discard/2]).

keep(F, _List) -> filter(F, _List, []).

discard(F, _List) -> filter(fun(X) -> not F(X) end, _List, []).

filter(F, [H|T], Acc) ->
  case F(H) of
    true -> filter(F, T, [H|Acc]);
    false -> filter(F, T, Acc)
  end;
filter(_, [], Acc) -> lists:reverse(Acc).

-module(sum_of_multiples).
-export([sum/2]).
-spec sum(list(), integer()) -> integer().
sum(Factors, Limit) ->
  aux(Factors, Limit - 1, 0).
aux(_Factors, 0, Sum) ->
  Sum;
aux(Factors, Limit, Sum) ->
  IsMultiple = lists:any(fun(0) -> false;
                            (I) -> Limit rem I == 0 end,
                         Factors),
  case IsMultiple of
    true  -> aux(Factors, Limit - 1, Sum + Limit);
    false -> aux(Factors, Limit - 1, Sum)
  end.


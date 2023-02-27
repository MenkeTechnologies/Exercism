-module(sublist).

-export([is_equal/2, is_sublist/2, is_superlist/2, is_unequal/2, relation/2]).

is_equal([], []) -> true;
is_equal([H|T1], [H|T2]) -> is_equal(T1, T2);
is_equal(_, _) -> false.

is_unequal(L1, L2) -> not is_equal(L1, L2).

is_sublist([], _) -> true;
is_sublist(L1, L2) when length(L1) > length(L2) -> false;
is_sublist(L1, L2) ->
  S2 = lists:sublist(L2, length(L1)),
  case is_equal(L1, S2) of
    true -> true;
    false -> is_sublist(L1, tl(L2))
  end.

is_superlist(L1, L2) -> is_sublist(L2, L1).
relation(L1, L2) -> 
  case {is_sublist(L1, L2), is_superlist(L1, L2)} of
    {true, true}   -> equal;
    {true, false}  -> sublist;
    {false, true}  -> superlist;
    {false, false} -> unequal
  end.

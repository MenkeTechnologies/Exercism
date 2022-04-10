-module(hamming).

-export([distance/2]).


distance(_Strand1, _Strand2) ->
  if
    length(_Strand1) /= length(_Strand2) ->
      {error, "left and right strands must be of equal length"};
    true ->
      helper(_Strand1, _Strand2, 0)
  end.

helper([], [], Acc) -> Acc;
helper([H1|T1], [H2|T2], Acc) ->
  if
    H1 /= H2 -> helper(T1, T2, Acc + 1);
    true -> helper(T1, T2, Acc)
  end.

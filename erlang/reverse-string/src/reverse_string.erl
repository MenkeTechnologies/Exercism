-module(reverse_string).

-export([reverse/1]).

reverse(S) ->
    aux(S, []).

aux([], Result) ->
    Result;

aux([H | T], Acc)->
    aux(T, [H | Acc]).

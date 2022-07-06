-module(triangle).
-export([kind/3]).

kind(A, B, C) -> kind(lists:sort([A, B, C])).

kind([A, _, _]) when A =< 0 ->
    {error, "all side lengths must be positive"};
kind([A, B, C]) when A+B =< C ->
    {error, "side lengths violate triangle inequality"};
kind([A, A, A]) ->
    equilateral;
kind([A, B, C]) when A == B; B == C; A == C ->
    isosceles;
kind(_) ->
    scalene.

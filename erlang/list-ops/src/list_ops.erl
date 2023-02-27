-module(list_ops).

-export([append/2, concat/1, filter/2, length/1, map/2, foldl/3, foldr/3, reverse/1]).

append([], List) -> List;
append([X | Xs], List) -> [X | append(Xs, List)].

concat([]) -> [];
concat([X | Xs]) -> append(X, concat(Xs)).

filter(_, []) -> [];
filter(F, [X | Xs]) ->
    case F(X) of
      true -> [X | filter(F, Xs)];
      _ -> filter(F, Xs)
    end.

length([]) -> 0;
length([_ | Xs]) -> 1 + list_ops:length(Xs).

map(_, []) -> [];
map(F, [X | Xs]) ->
    [F(X) | map(F, Xs)].

foldl(_, Acc, []) -> Acc;
foldl(F, Acc, [X | Xs]) ->
    foldl(F, F(X, Acc), Xs).

foldr(_, Acc, []) -> Acc;
foldr(F, Acc, [X | Xs]) ->
    F(X, foldr(F, Acc, Xs)).

reverse(List) -> reverse(List, []).
reverse([], Acc) -> Acc;
reverse([X | Xs], Acc) -> reverse(Xs, [X | Acc]).


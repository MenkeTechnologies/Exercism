-module(eliuds_eggs).

-export([egg_count/1]).


egg_count(N) ->
    Binary = integer_to_list(N, 2),
    length([Digit || Digit <- Binary, Digit == $1]).

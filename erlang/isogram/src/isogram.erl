-module(isogram).
-export([is_isogram/1, test_version/0]).

is_isogram(Lst) ->
	Letters = lists:filter(fun(C) -> not lists:member(C, "- ") end, string:to_lower(Lst)),
	length(Letters) == sets:size(sets:from_list(Letters)).

test_version() ->
    1.

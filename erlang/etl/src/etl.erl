-module(etl).

-export([transform/1, test_version/0]).

transform(Dict) ->
    [{string:lowercase(Letter), Score} || {Score, Letters} <- Dict, Letter <- Letters].

test_version() ->
    1.

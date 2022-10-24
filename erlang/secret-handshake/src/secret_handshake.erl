-module(secret_handshake).
-export([commands/1]).

commands(0) ->
    [];
commands(N) when N band 16 > 0 ->
    lists:reverse(commands(N - 16));
commands(N) when N band 1 > 0 ->
    ["wink" | commands(N - 1)];
commands(N) when N band 2 > 0 ->
    ["double blink" | commands(N - 2)];
commands(N) when N band 4 > 0 ->
    ["close your eyes" | commands(N - 4)];
commands(N) when N band 8 > 0 ->
    ["jump" | commands(N - 8)].

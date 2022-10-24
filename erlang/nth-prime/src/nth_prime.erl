-module(nth_prime).
-export([prime/1]).

is_prime(N) ->
    is_prime(N, trunc(math:sqrt(N))).
is_prime(_, 1) ->
    1;
is_prime(N, L) when N rem L == 0 ->
    0;
is_prime(N, L) ->
    is_prime(N, L - 1).

prime(0) ->
    error("there is no zeroth prime");
prime(1) ->
    2;
prime(N) ->
    prime(N, 1).
prime(1, P) ->
    P;
prime(N, P) ->
    prime(N - is_prime(P + 2), P + 2).

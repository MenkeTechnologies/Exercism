-module(prime_factors).
-export([factors/1]).

factors(Value) -> aux(Value, 2).

aux(1, _) -> [];
aux(Value, Factor) when Value rem Factor == 0 -> [Factor | aux(Value div Factor, Factor)];
aux(Value, Factor) -> aux(Value, Factor + 1).

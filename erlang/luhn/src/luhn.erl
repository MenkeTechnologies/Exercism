-module(luhn).

-export([valid/1]).

valid(Value) ->
    Trimmed = string:trim(Value),
    if length(Trimmed) > 1 ->
        Reversed = lists:reverse(Trimmed),
        aux(Reversed, false, 0);
    true ->
        false
    end.

aux([$\s|Digits], Double, Sum) ->
    aux(Digits, Double, Sum);
aux([Digit|_], _, _) when Digit < $0; Digit > $9 ->
    false;
aux([Digit|Digits], true, Sum) ->
    Integer = Digit - $0,
    Result = double(Integer),
    aux(Digits, false, Sum + Result);
aux([Digit|Digits], false, Sum) ->
    Integer = Digit - $0,
    aux(Digits, true, Sum + Integer);
aux([], _, Sum) ->
    Sum rem 10 == 0.

double(Value) ->
    Integer = Value * 2,
    if Integer > 9 ->
        Integer - 9;
    true ->
        Integer
    end.


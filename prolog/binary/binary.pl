binary("0", 0) :- !.
binary("1", 1) :- !.
binary(S, Dec) :-
    string_length(S, Len),
    Len >= 2,
    LenMinusOne is Len - 1,
    sub_string(S, 0, LenMinusOne, _, Rest),
    sub_string(S, LenMinusOne, 1, _, Last),
    binary(Last, LastDec),
    binary(Rest, RestDec),
    Dec is RestDec * 2 + LastDec.

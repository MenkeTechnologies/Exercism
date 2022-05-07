leap(Y):-
    Y mod 400 =:= 0 -> true;
    Y mod 100 =:= 0 -> false;
    Y mod 4 =:= 0.

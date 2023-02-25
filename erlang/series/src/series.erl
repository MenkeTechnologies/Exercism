-module(series).
-export([slices/2]).

slices(Length, Series) ->
        case Length > length(Series) of
            true -> error(badarg);
            _ -> aux(Length, Series)
    end.

aux(Length, Series) when Length > length(Series) -> [];
aux(Length, Series) -> [lists:sublist(Series, Length) | aux(Length, tl(Series))].


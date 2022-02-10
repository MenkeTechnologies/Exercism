-module(leap).

-export([leap_year/1]).


leap_year(Y) -> (Y rem 4 == 0) and (Y rem 100 /= 0) or (Y rem 400 == 0).

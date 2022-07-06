-module(roman_numerals).

-export([roman/1]).

-define(NUMERALS,
        [{1000, "M"},
         {900, "CM"},
         {500, "D"},
         {400, "CD"},
         {100, "C"},
         {90, "XC"},
         {50, "L"},
         {40, "XL"},
         {10, "X"},
         {9, "IX"},
         {5, "V"},
         {4, "IV"},
         {1, "I"}]).

roman(Number) ->
    roman(Number, ?NUMERALS).

roman(Number, Numerals = [{A, R} | _]) when Number >= A ->
    R ++ roman(Number - A, Numerals);
roman(Number, [_ | Numerals]) ->
    roman(Number, Numerals);
roman(0, _) ->
    "".

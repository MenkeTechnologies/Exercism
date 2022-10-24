-module(beer_song).
-export([verse/1, sing/1, sing/2]).

verse(N) when N > 1 ->
  NumStr = integer_to_list(N),
  NextNumStr = integer_to_list(N - 1),
  Plural = if N > 2 -> "s"; true -> "" end,
  NumStr ++ " bottles of beer on the wall, " ++ NumStr ++ " bottles of beer.\n" ++ 
    "Take one down and pass it around, " ++ NextNumStr ++ " bottle" ++ Plural ++ " of beer on the wall.\n";
verse(1) ->
  "1 bottle of beer on the wall, 1 bottle of beer.\n" ++
  "Take it down and pass it around, no more bottles of beer on the wall.\n";
verse(0) ->
  "No more bottles of beer on the wall, no more bottles of beer.\n" ++
  "Go to the store and buy some more, 99 bottles of beer on the wall.\n".

sing(N) ->
  sing(N, 0).
sing(From, To) ->
  Verses = [verse(I) || I <- lists:seq(From, To, -1)],
  lists:join("\n", Verses) ++ "\n".


-module(raindrops).

-export([convert/1]).

-define(Factors, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

convert(Number) ->
  case lists:foldl(fun({Factor, Sound}, Acc) ->
    case Number rem Factor of
      0 -> Acc ++ Sound;
      _ -> Acc
    end end, "", ?Factors) of
    "" -> integer_to_list(Number);
    Sound -> Sound
  end.

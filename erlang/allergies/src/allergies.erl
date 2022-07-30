-module(allergies).
-export([allergies/1, is_allergic_to/2]).
-define(DICT, #{ eggs=>1,
					    peanuts=>2,
					    shellfish=>4,
					    strawberries=>8,
					    tomatoes=>16,
					    chocolate=>32,
					    pollen=>64,
					    cats=>128}).


is_allergic_to(Substance, Score) -> Score band maps:get(Substance, ?DICT) > 0.

allergies(Score) -> [
  K || K <- maps:keys(?DICT),
  is_allergic_to(K, Score)
].


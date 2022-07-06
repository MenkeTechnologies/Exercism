-module(anagram).

-export([find_anagrams/2]).

find_anagrams(Subject, Candidates) ->
  lists:filter(fun(Candidate) ->
      is_anagram_of(Subject, Candidate) end,
      Candidates).

is_anagram_of(Subject, Candidate) ->
  Target = string:lowercase(Subject),
  Cand = string:lowercase(Candidate),
  Target /= Cand andalso lists:sort(Target) == lists:sort(Cand).


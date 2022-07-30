-module(pangram).
-export([is_pangram/1, test_version/0]).

is_pangram(Sentence) ->
  LC = string:to_lower(Sentence),
  lists:all(
    fun(C)->C end,
    [lists:member(C, LC) || C <- "abcdefghijklmnopqrstuvwxyz"]
   ).
test_version() -> 1.

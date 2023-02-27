-module(largest_series_product).
-export([largest_product/2]).

largest_product(_, 0) -> 1;
largest_product(_, Span) when Span < 0 -> erlang:error(badarg);
largest_product(String, Span) when length(String) < 0 orelse length(String) < Span -> erlang:error(badarg);
largest_product(String, Span) ->
  Digits = lists:map(fun to_number/1, String),
  aux(Digits, Span, 0).

to_number(C) when C < $0 orelse C > $9 -> erlang:error(badarg);
to_number(C) -> C - $0.

aux(Digits, Span, Acc) when length(Digits) < Span -> Acc;
aux(Digits, Span, Acc) ->
  Product = lists:foldl(fun(D, Acc2) -> D * Acc2 end, 1, lists:sublist(Digits, Span)),
  aux(tl(Digits), Span, max(Product, Acc)).


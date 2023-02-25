-module(all_your_base).
-export([rebase/3]).

rebase(_, InputBase, _) when InputBase < 2 -> {error, "input base must be >= 2"};
rebase(_, _, OutputBase) when OutputBase < 2 -> {error, "output base must be >= 2"};
rebase([], _, _) -> {ok, [0]};
rebase(Digits, InputBase, OutputBase) ->
        case convert_from(Digits, InputBase, 0) of
                    {ok, 0} -> {ok, [0]};
                    {ok, Number} -> convert_to(Number, OutputBase, []);
                    {error, _} = Error -> Error
                                              end.

convert_from([Digit|_], Base, _) when Digit < 0 orelse Digit >= Base -> {error, "all digits must satisfy 0 <= d < input base"};
convert_from([Digit|Tail], Base, Acc) -> convert_from(Tail, Base, Acc * Base + Digit);
convert_from([], _, Acc) -> {ok, Acc}.

convert_to(0, _, Acc) -> {ok, Acc};
convert_to(Number, Base, Acc) -> convert_to(Number div Base, Base, [Number rem Base|Acc]).


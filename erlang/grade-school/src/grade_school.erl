-module(grade_school).
-export([add/3, get/2, get/1, new/0]).

new() -> [].

add(Name, Grade, School) -> Students = lists:sort([S || {_, S} <- School]),
    case lists:member(Name, Students) of
        true -> School;
        _    -> [{Grade, Name} | School]
    end.

get(Grade, School) -> [Student || {_, Student} <- lists:sort([{G, _S}
             || {G, _S} <- School, G == Grade])].

get(School) -> lists:sort([Student || {_, Student} <- School]).

-module(nucleotide_count).
-export([count/2, nucleotide_counts/1]).

count(Strand, N) -> length(lists:filter(fun(C) -> check(C) == hd(N) end, Strand)).

nucleotide_counts(Strand) ->
    [{"A", count(Strand, "A")},
     {"C", count(Strand, "C")},
     {"G", count(Strand, "G")},
     {"T", count(Strand, "T")}].

check(N) when N == $A;N == $C;N == $G;N == $T->N;
check(_) -> erlang:error("Unknown char").

-module(rna_transcription).

-export([to_rna/1]).

-define(Nucleotides, #{$G => $C, $C => $G, $T => $A, $A => $U}).


to_rna(_Strand) -> [maps:get(Nt, ?Nucleotides) || Nt <- _Strand].

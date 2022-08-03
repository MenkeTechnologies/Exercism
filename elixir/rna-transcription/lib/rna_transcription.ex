defmodule RnaTranscription do
  @transcriptions %{?A => ?U, ?C => ?G, ?T => ?A, ?G => ?C}

  def to_rna(dna) do
    Enum.map(dna, &@transcriptions[&1])
  end
end

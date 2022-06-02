defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @spec count(charlist(), char()) :: non_neg_integer()
  def count(strand, nucleotide) do
    strand |> Enum.count(&(nucleotide == &1))
  end

  @spec histogram(charlist()) :: map()
  def histogram(strand) do
    @nucleotides |> Enum.into(%{}, fn n -> {n, count(strand, n)} end)
  end
end

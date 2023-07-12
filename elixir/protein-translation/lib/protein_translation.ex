defmodule ProteinTranslation do
  def of_rna(rna) do
    rna
    |> String.graphemes
    |> Enum.chunk_every(3)
    |> Enum.map(&List.to_string/1)
    |> Enum.reduce_while([], fn codon, acc ->
      case of_codon(codon) do
        {:ok, "STOP"} -> {:halt, acc}
        {:ok, protein} -> {:cont, [protein | acc]}
        {:error, _} = error -> {:halt, error}
      end
    end)
    |> case do
      {:error, _} -> {:error, "invalid RNA"}
      proteins -> {:ok, Enum.reverse(proteins)}
    end
  end

  def of_codon(codon) when codon in ["UGU", "UGC"], do: {:ok, "Cysteine"}
  def of_codon(codon) when codon in ["UUA", "UUG"], do: {:ok, "Leucine"}
  def of_codon(codon) when codon in ["UUU", "UUC"], do: {:ok, "Phenylalanine"}
  def of_codon(codon) when codon in ["UAU", "UAC"], do: {:ok, "Tyrosine"}
  def of_codon(codon) when codon in ["UCU", "UCC", "UCA", "UCG"], do: {:ok, "Serine"}
  def of_codon(codon) when codon in ["UAA", "UAG", "UGA"], do: {:ok, "STOP"}
  def of_codon("AUG"), do: {:ok, "Methionine"}
  def of_codon("UGG"), do: {:ok, "Tryptophan"}
  def of_codon(_), do: {:error, "invalid codon"}
end


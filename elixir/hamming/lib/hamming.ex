defmodule Hamming do
  @spec hamming_distance([char], [char]) :: {:ok, non_neg_integer} | {:error, String.t()}
  def hamming_distance(s1, s2) do
    if length(s1) != length(s2) do
      {:error, "strands must be of equal length"}
    else
      {:ok,
       s1
       |> Enum.zip(s2)
       |> Enum.count(fn {n1, n2} -> n1 != n2 end)}
    end
  end
end

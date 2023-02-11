defmodule Hamming do
  def hamming_distance(s1, s2) do
    if length(s1) != length(s2) do
      {:error, "strands must be of equal length"}
    else
      {:ok,
       s1
       |> Enum.zip(s2)
       |> Enum.count(fn {c1, c2} -> c1 != c2 end)}
    end
  end
end

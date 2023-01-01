defmodule Sublist do
  def compare(a, b) do
    cond do
      a == b -> :equal
      is_subset_of?(a, b) -> :sublist
      is_subset_of?(b, a) -> :superlist
      true -> :unequal
    end
  end
  defp is_subset_of?(a, b) do
    case a do
      [] -> true 
      _ -> Stream.chunk_every(b, length(a), 1, :discard)
        |> Enum.any?(&(&1 === a))
    end
  end
end

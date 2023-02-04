defmodule StringSeries do
  def slices(s, size) when size > 0 do
    s
    |> String.graphemes
    |> Enum.chunk_every(size, 1, :discard)
    |> Enum.map(&Enum.join(&1))
  end
  def slices(_, _) do [] end
end

defmodule LucasNumbers do
  def generate(cnt) when is_number(cnt) and cnt > 0 do
    {-1, 2} |> Stream.iterate(fn {x, y} -> {y, x + y} end)
      |> Enum.take(cnt)
      |> Enum.map(&elem(&1, 1))
  end
  def generate(_), do: raise(ArgumentError, "count must be specified as an integer >= 1")
end

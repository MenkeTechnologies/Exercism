defmodule SumOfMultiples do

  def to(limit, factors) do
    1..(limit - 1)
    |> Enum.filter(fn n -> factors |> Enum.any?(&is_multiple?(n, &1)) end)
    |> Enum.sum()
  end
  
  defp is_multiple?(_, 0), do: false
  defp is_multiple?(num, factor), do: rem(num, factor) == 0
  
end

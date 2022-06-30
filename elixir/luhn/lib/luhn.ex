defmodule Luhn do
  @doc """
  Checks if the given number is valid via the luhn formula
  """
  @spec valid?(String.t()) :: boolean
  def valid?(num) do
    nows = String.replace(num, ~r/\s+/, "")

    nows =~ ~r/^\d+$/ and
      Regex.scan(~r/\d/, nows)
      |> Enum.map(fn [n] -> String.to_integer(n) end)
      |> Enum.reverse()
      |> Enum.with_index()
      |> Enum.map(fn {n, i} -> if rem(i, 2) == 1, do: n * 2, else: n end)
      |> Enum.map(&if &1 > 9, do: &1 - 9, else: &1)
      |> (fn lst -> Enum.count(lst) > 1 and rem(Enum.sum(lst), 10) == 0 end).()
  end
end

defmodule Anagram do
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    candidates |> Enum.filter(&(base |> uc != &1 |> uc && base |> sorted == &1 |> sorted))
  end

  def uc(string), do: string |> String.upcase()
  def sorted(string), do: string |> String.upcase |> to_charlist() |> Enum.sort()
end

defmodule Isogram do
  @spec isogram?(String.t()) :: boolean
  def isogram?(sentence) do
    sentence
    |> String.downcase()
    |> String.replace(~r/\W/, "")
    |> String.to_charlist()
    |> Enum.frequencies
    |> Map.values
    |> Enum.all?(&(&1 < 2))
  end
end

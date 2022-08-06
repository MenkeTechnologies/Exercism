defmodule IsbnVerifier do
  def isbn?(s) do
    dashless = s |> String.replace("-", "")
    if String.match?(dashless, ~r/^\d{9}[\dX]$/) do
      dashless
      |> String.graphemes()
      |> Enum.map(&to_integer/1)
      |> Enum.zip(10..1)
      |> Enum.reduce(0, fn {digit, multiplier}, acc -> acc + digit * multiplier end)
      |> Integer.mod(11) == 0
    end
  end
  defp to_integer("X"), do: 10
  defp to_integer(digit), do: String.to_integer(digit)
end


defmodule RomanNumerals do
  @roman_values [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  def numeral(number) do
    [_, r] =
      @roman_values
      |> Enum.reduce([number, ""], fn {k, v}, acc ->
        [rem(acc |> hd, k), List.last(acc) <> String.duplicate(v, div(acc |> hd, k))]
      end)

    r
  end
end

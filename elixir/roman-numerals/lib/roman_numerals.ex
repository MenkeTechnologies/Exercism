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
    @roman_values |>
    Enum.reduce([number, ""], fn {k, v}, acc ->
      acc[1] = acc[1] <> String.duplicate(v, div(acc[0],k))
      acc[0] = rem(acc[0], k)
    end) |> Enum.join("")
  end
end

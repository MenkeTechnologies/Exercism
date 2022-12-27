defmodule Squares do
  def sum_of_squares(n) do
      1..n
      |> Enum.map(& Integer.pow(&1, 2))
      |> Enum.sum()
  end
      
  def square_of_sum(n) do
      1..n
      |> Enum.sum()
      |> Integer.pow(2)
  end
      
  def difference(number), do: square_of_sum(number) - sum_of_squares(number)
end

defmodule ArmstrongNumber do
  def valid?(n) do
    digits = n |> Integer.digits()
    len = digits |> length
    n == digits |> Enum.map(&:math.pow(&1, len)) |> Enum.sum()
  end
end

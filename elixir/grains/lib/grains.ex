defmodule Grains do
  import Bitwise

  def square(n) when n <= 64 and n >= 1 do
    {:ok, 1 <<< (n - 1)}
  end

  def square(_) do
    {:error, "The requested square must be between 1 and 64 (inclusive)"}
  end

  def total do
    {:ok,
     1..64
     |> Enum.reduce(0, &(Kernel.elem(square(&1), 1) + &2))}
  end
end

defmodule PopCount do
  def egg_count(n) do
    n |> Integer.digits(2) |> Enum.sum()
  end
end


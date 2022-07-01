defmodule Strain do
  def keep(lst, f) do
    for n <- lst, f.(n), do: n
  end

  def discard(lst, f) do
    keep(lst, fn n -> not f.(n) end)
  end
end

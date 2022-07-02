defmodule Pangram do
  def pangram?(s) do
    lc = s |> String.downcase() |> to_charlist
    ?a..?z |> Enum.all?(&Enum.member?(lc, &1))
  end
end

defmodule Pangram do
  def pangram?(sentence) do
    lc = sentence |> String.downcase() |> to_charlist
    ?a..?z |> Enum.all?(&Enum.member?(lc, &1))
  end
end

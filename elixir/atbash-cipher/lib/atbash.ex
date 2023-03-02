defmodule Atbash do
  def encode(s) do
    s
    |> String.downcase
    |> String.replace(~r/\W/, "")
    |> String.to_charlist
    |> Enum.map(&transform_char/1)
    |> Enum.chunk_every(5)
    |> Enum.map(&to_string/1)
    |> Enum.join(" ")
  end

  defp transform_char(c) when c in ?0..?9, do: c
  defp transform_char(c), do: ?z - c + ?a

  def decode(s) do
    s
    |> String.replace(" ", "")
    |> String.to_charlist
    |> Enum.map(&transform_char/1)
    |> to_string
  end
end

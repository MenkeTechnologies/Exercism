defmodule Acronym do
  def abbreviate(string) do
    string
    |> String.split(~r/[\s-_]+/, trim: true)
    |> Enum.map(&String.first/1)
    |> Enum.join("")
    |> String.upcase()
  end
end

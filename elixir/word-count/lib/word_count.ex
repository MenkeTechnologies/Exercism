defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r/[^[:alnum:]-']/u, trim: true)
    |> Enum.reduce(%{}, fn s, acc ->
      acc |> Map.update(s |> String.trim("'"), 1, &(&1 + 1))
    end)
  end
end

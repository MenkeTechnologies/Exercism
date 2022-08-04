defmodule ETL do
 def transform(dict) do
    dict
    |> Enum.flat_map(fn {k, v} -> v |> Enum.map(&{String.downcase(&1), k}) end)
    |> Map.new()
  end
end

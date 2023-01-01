defmodule Garden do
  @default_names [ :alice, :bob, :charlie, :david, :eve, :fred, :ginny, :harriet,
    :ileana, :joseph, :kincaid, :larry ]
  
  @all_plants %{"C" => :clover, "G" => :grass, "R" => :radishes, "V" => :violets}
  
  def info(s, student_names \\ @default_names) do
    plants = s
      |> String.split("\n")
      |> Enum.map(&String.graphemes/1)
      |> Enum.map(& &1 |> Enum.map(fn c -> @all_plants |> Map.get(c) end))
      |> Enum.map(&Enum.chunk_every(&1, 2))
      |> Enum.zip()
      |> Enum.map(fn {row1, row2} -> (row1 ++ row2) |> List.to_tuple() end)
    student_names
    |> Enum.sort()
    |> Enum.with_index()
    |> Enum.map(fn {name, i} -> {name, plants |> Enum.at(i, {})} end)
    |> Map.new()
  end
end

defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    list |> tl()
  end

  def first(list) do
    list |> hd()
  end

  def count(list) do
    list |> length
  end

  def exciting_list?(list) do
    "Elixir" in list
  end
end

defmodule School do
  @moduledoc """
  Simulate students in a school.

    Each student is in a grade.
  """
  @type school :: %{(name :: String.t()) => grade :: integer}
  @doc """
  Create a new, empty school.
  """
  @spec new() :: school
  def new(), do: %{}

  @doc """
  Add a student to a particular grade in school.
  """
  @spec add(school, String.t(), integer) :: {:ok | :error, school}
  def add(school, name, grade) do
    case Map.get(school, name) do
      nil -> {:ok, Map.put(school, name, grade)}
      _ -> {:error, school}
    end
  end

  @doc """
  Return the names of the students in a particular grade, sorted alphabetically.
  """
  @spec grade(school, integer) :: [String.t()]
  def grade(school, grade),
    do:
      school
      |> Enum.filter(fn {_, student_grade} -> student_grade === grade end)
      |> Enum.map(fn {name, _} -> name end)

  @doc """
  Return the names of all the students in the school sorted by grade and name.
  """
  @spec roster(school) :: [String.t()]
  def roster(school),
    do:
      school
      |> Enum.sort_by(fn {name, grade} -> {grade, name} end)
      |> Enum.map(fn {name, _} -> name end)
end

defmodule DndCharacter do
  defstruct ~w[strength dexterity constitution intelligence wisdom charisma hitpoints]a

  def modifier(score) do
    :math.floor((score - 10) / 2)
    |> trunc
  end

  def ability do
    for(_ <- 1..4, do: :rand.uniform(6))
    |> Enum.sort()
    |> Enum.drop(1)
    |> Enum.sum()
  end

  def character do
    constitution = ability()

    %DndCharacter{
      strength: ability(),
      dexterity: ability(),
      constitution: constitution,
      intelligence: ability(),
      wisdom: ability(),
      charisma: ability(),
      hitpoints: 10 + modifier(constitution)
    }
  end
end

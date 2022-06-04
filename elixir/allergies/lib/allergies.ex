defmodule Allergies do
  use Bitwise

  @allergies_bits %{
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
  }

  def list(flags) do
    @allergies_bits
    |> Map.keys
    |> Enum.filter(&allergic_to?(flags, &1))
  end

  def allergic_to?(flags, item) do
    (@allergies_bits[item] &&& flags) > 0
  end
end

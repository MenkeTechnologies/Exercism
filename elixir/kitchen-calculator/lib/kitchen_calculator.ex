defmodule KitchenCalculator do
  @conversion %{
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15,
    milliliter: 1
  }

  def get_volume(volume_pair) do
    {_, n} = volume_pair
    n
  end

  def to_milliliter(volume_pair) do
    {unit, n} = volume_pair
    {:milliliter, n * @conversion[unit]}
  end

  def from_milliliter(volume_pair, unit) do
    {_, n} = volume_pair
    {unit, n / @conversion[unit]}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end

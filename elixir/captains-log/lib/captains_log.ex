defmodule CaptainsLog do
  @planetary_classes ["D", "H", "J", "K", "L", "M", "N", "R", "T", "Y"]
  @start 41000.0
  @finish 42000.0

  def random_planet_class() do
    Enum.random(@planetary_classes)
  end

  def random_ship_registry_number() do
    "NCC-#{Enum.random(1000..9999)}"
  end

  def random_stardate() do
    :random.uniform() * (@finish - @start) + @start
  end

  def format_stardate(stardate) do
    "~.1f" |> :io_lib.format([stardate]) |> to_string()
  end
end

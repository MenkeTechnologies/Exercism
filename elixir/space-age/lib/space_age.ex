defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @earth_seconds_per_year 31557600
  @planet_years_to_earth_years_ratio %{
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}
  def age_on(planet, seconds) do
    if planet in Map.keys(@planet_years_to_earth_years_ratio) do
      {:ok, seconds / @earth_seconds_per_year / Map.get(@planet_years_to_earth_years_ratio, planet)}
    else
      {:error, "not a planet"}
    end
  end
end

defmodule BoutiqueSuggestions do
  def get_combinations(tops, bottoms, opts \\ []) do
    do_get_combinations(tops, bottoms, opts)
  end

  defp do_get_combinations(tops, bottoms, opts) do
    max_price = Keyword.get(opts, :maximum_price, 100.0)

    for top <- tops,
        bottom <- bottoms,
        top.base_color != bottom.base_color,
        top.price + bottom.price < max_price,
        do: {top, bottom},
        into: []
  end
end

defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    Enum.sort_by(inventory, & &1.price)
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, &(!&1.price))
  end

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn n ->
      new_name = String.replace(n.name, old_word, new_word)
      %{n | name: new_name}
    end)
  end

  def increase_quantity(item, count) do
    new_sizes =
      Enum.reduce(item.quantity_by_size, %{}, fn {size, n}, acc ->
        Map.put(acc, size, n + count)
      end)

    Map.put(item, :quantity_by_size, new_sizes)
  end

  def total_quantity(%{quantity_by_size: sizes}) do
    Enum.reduce(sizes, 0, fn {_, n}, acc ->
      n + acc
    end)
  end
end

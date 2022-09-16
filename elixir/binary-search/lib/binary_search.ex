defmodule BinarySearch do
  def search(numbers, target) do
    aux(numbers, 0, tuple_size(numbers) - 1, target)
  end
  def aux(_, lo, hi, _) when lo > hi, do: :not_found
  def aux(numbers, lo, hi, target) do
    mid = div(lo + hi, 2)
    cond do
      elem(numbers, mid) == target ->
        {:ok, mid}
      elem(numbers, mid) > target ->
        aux(numbers, lo, mid - 1, target)
      true ->
        aux(numbers, mid + 1, hi, target)
    end
  end
end

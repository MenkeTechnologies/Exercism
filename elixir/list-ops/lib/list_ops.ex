defmodule ListOps do
  def count(l), do: l |> fold(0, fn _, acc -> acc + 1 end)
  def reverse(l), do: l |> fold([], fn n, acc -> [n | acc] end)
  def map(l, f), do: l |> reverse |> fold([], fn n, acc -> [f.(n) | acc] end)

  def filter(l, f),
    do: l |> reverse |> fold([], fn n, acc -> if f.(n), do: [n | acc], else: acc end)

  def foldl(l, acc, f), do: l |> fold(acc, f)
  def foldr(l, acc, f), do: l |> reverse |> fold(acc, f)

  def append(left, right),
    do: left |> reverse |> fold(right, fn n, acc -> [n | acc] end)

  def concat(ll), do: ll |> reverse |> fold([], &append/2)
  defp fold([], acc, _f), do: acc
  defp fold([h | t], acc, f), do: t |> fold(f.(h, acc), f)
end

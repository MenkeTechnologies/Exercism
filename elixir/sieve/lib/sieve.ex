defmodule Sieve do
  def primes_to(1), do: []

  def primes_to(limit) do
    2..limit |> Enum.to_list() |> sieve(limit, [])
  end

  defp sieve([], _, acc), do: acc

  defp sieve([next_prime | rest], limit, acc) do
    to_remove = next_prime..limit//next_prime |> Enum.to_list()
    (rest -- to_remove) |> sieve(limit, acc ++ [next_prime])
  end
end

defmodule TwoFer do
  def two_fer(name \\ "you") when is_bitstring(name) do
    "One for #{name}, one for me."
  end
end

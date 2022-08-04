defmodule RotationalCipher do
  def rotate(s, amt) do
    s
    |> to_charlist()
    |> Enum.map(&translate(&1, amt))
    |> to_string()
  end

  defp translate(c, amt) when c in ?A..?Z, do: ?A + rem(c - ?A + amt, 26)
  defp translate(c, amt) when c in ?a..?z, do: ?a + rem(c - ?a + amt, 26)
  defp translate(c, _), do: c
end

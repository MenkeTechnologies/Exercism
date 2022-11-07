defmodule BeerSong do
  def verse(0) do
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end
  def verse(number) do
    """
    #{number} #{plural("bottle", number)} of beer on the wall, #{number} #{plural("bottle", number)} of beer.
    #{do_verse(number)}
    """
  end
  defp do_verse(1) do
    "Take it down and pass it around, no more #{plural("bottle", 0)} of beer on the wall."
  end
  defp do_verse(number) do
    "Take one down and pass it around, #{number-1} #{plural("bottle", number-1)} of beer on the wall."
  end

  defp plural(word, 1), do: word
  defp plural(word, _number), do: "#{word}s"

  def lyrics(range \\ 99..0) do
    range |> Enum.map(&verse/1) |> Enum.join("\n")
  end
end

defmodule PaintByNumber do

  def palette_bit_size(color_count), do: aux(1, color_count)

  defp aux(acc, n) do
    cond do
      Integer.pow(2, acc) >= n -> acc
      true -> aux(acc + 1, n)
    end
  end

  def empty_picture(), do: <<>>

  def test_picture(), do: <<0::2, 1::2, 2::2, 3::2>>

  def prepend_pixel(picture, color_count, pixel_color_index) do
    <<pixel_color_index::size(palette_bit_size(color_count)), picture::bitstring>>
  end

  def get_first_pixel(<<>>, _), do: nil

  def get_first_pixel(picture, color_count) do
    bit_size = palette_bit_size(color_count)
    <<a::size(bit_size), _::bitstring>> = picture
    a
  end

  def drop_first_pixel(<<>>, _), do: <<>>

  def drop_first_pixel(picture, color_count) do
    bit_size = palette_bit_size(color_count)
    <<_::size(bit_size), rest::bitstring>> = picture
    rest
  end

  def concat_pictures(p1, p2), do: <<p1::bitstring, p2::bitstring>>
end


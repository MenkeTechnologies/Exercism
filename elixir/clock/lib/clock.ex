defmodule Clock do
  defstruct hour: 0, minute: 0

  def new(hour, minute) do
    %Clock{hour: Integer.mod(hour + floor(minute / 60), 24), minute: Integer.mod(minute, 60)}
  end

  def add(%Clock{hour: hour, minute: minute}, add_minute) do
    new(hour, minute + add_minute)
  end

  defimpl String.Chars, for: Clock do
    defp pad(n), do: Kernel.to_string(n) |> String.pad_leading(2, "0")
    def to_string(%Clock{hour: hour, minute: minute}), do: "#{pad(hour)}:#{pad(minute)}"
  end
end

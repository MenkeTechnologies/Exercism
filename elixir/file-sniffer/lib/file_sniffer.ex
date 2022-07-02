defmodule FileSniffer do
  @mime_types %{
    exe: "application/octet-stream",
    bmp: "image/bmp",
    png: "image/png",
    jpg: "image/jpg",
    gif: "image/gif"
  }

  def type_from_extension(extension) do
    Map.get(@mime_types, String.to_atom(extension))
  end

  def type_from_binary(file_binary) do
    case file_binary do
      <<0x7F, 0x45, 0x4C, 0x46, _::binary>> -> @mime_types.exe
      <<0x42, 0x4D, _::binary>> -> @mime_types.bmp
      <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _::binary>> -> @mime_types.png
      <<0xFF, 0xD8, 0xFF, _::binary>> -> @mime_types.jpg
      <<0x47, 0x49, 0x46, _::binary>> -> @mime_types.gif
    end
  end

  def verify(file_binary, extension) do
    filetype = type_from_binary(file_binary)

    if filetype == type_from_extension(extension) do
      {:ok, filetype}
    else
      {:error, "Warning, file format and file extension do not match."}
    end
  end
end

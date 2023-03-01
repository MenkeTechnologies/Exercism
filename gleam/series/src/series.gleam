import gleam/list
import gleam/string

pub fn slices(s: String, len: Int) -> Result(List(String), Error) {
  let input_length = string.length(s)
  case len {
      _size if input_length == 0 -> Error(EmptySeries)
      len if len > input_length -> Error(SliceLengthTooLarge)
      len if len < 0 -> Error(SliceLengthNegative)
      0 -> Error(SliceLengthZero)
      len -> Ok(collect_slices(s, len))
    }
}

fn collect_slices(s: String, len: Int) -> List(String) {
  s |> string.to_graphemes |> list.window(len) |> list.map(string.concat)
}

pub type Error {
  EmptySeries
  SliceLengthTooLarge
  SliceLengthNegative
  SliceLengthZero
}


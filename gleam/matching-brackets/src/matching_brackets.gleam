import gleam/result
import gleam/string
import gleam/iterator
import gleam/list
import gleam/bool

pub fn is_paired(value: String) -> Bool {
  let stk =
    iterator.from_list(string.to_graphemes(value))
    |> iterator.fold_until(
      from: [],
      with: fn(stack, el) {
        case el {
          "{" | "[" | "(" -> list.Continue([el, ..stack])
          "}" | "]" | ")" -> {
            let open = case el {
              "}" -> "{"
              ")" -> "("
              "]" -> "["
            }
            case result.unwrap(list.first(stack), "") == open {
              True -> list.Continue(list.drop(stack, up_to: 1))
              _ -> list.Stop(["!" <> open, ..stack])
            }
          }
          _ -> list.Continue(stack)
        }
      },
    )
  list.length(stk) == 0
}

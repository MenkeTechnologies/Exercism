import gleam/bitwise
import gleam/list

pub type Command {
  Wink
  DoubleBlink
  CloseYourEyes
  Jump
}

pub fn commands(mask: Int) -> List(Command) {
  [
    #(1, list.append(_, [Wink])),
    #(2, list.append(_, [DoubleBlink])),
    #(4, list.append(_, [CloseYourEyes])),
    #(8, list.append(_, [Jump])),
    #(16, list.reverse),
  ]
  |> list.fold(
    from: [],
    with: fn(acc, code_and_command) {
      let #(command_code, f) = code_and_command
      case bitwise.and(mask, command_code) {
        0 -> acc
        _ -> f(acc)
      }
    },
  )
}

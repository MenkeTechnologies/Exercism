import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> x | "[WARNING]:" <> x | "[INFO]:" <> x -> string.trim(x)
  }
}
pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> _ -> "error"
    "[WARNING]:" <> _ -> "warning"
    "[INFO]:" <> _ -> "info"
  }
}
pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}

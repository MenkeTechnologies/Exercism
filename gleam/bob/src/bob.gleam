import gleam/string
pub fn hey(remark: String) -> String {
  let remark = string.trim(remark)
  let is_question = string.ends_with(remark, "?")
  let is_empty = string.is_empty(remark)
  let is_shouting = string.uppercase(remark) == remark && string.lowercase(remark) != remark
  case remark {
      _ if is_empty -> "Fine. Be that way!"
      _ if is_question && is_shouting -> "Calm down, I know what I'm doing!"
      _ if is_question -> "Sure."
      _ if is_shouting -> "Whoa, chill out!"
      _ -> "Whatever."
    }
}

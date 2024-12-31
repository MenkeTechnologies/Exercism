dict = list("{" = "}", "[" = "]", "(" = ")")

is_paired = function(s) {
  stk = list()
  for (c in s |> strsplit("") |> unlist()) {
    if (hasName(dict, c)) {
      stk = append(stk, dict[c])
    } else if (c %in% dict) {
      if (!length(stk)|| c != tail(stk, n = 1)) {
        return(FALSE)
      }
      stk = stk[-length(stk)]
    }
  }
  !length(stk)
}


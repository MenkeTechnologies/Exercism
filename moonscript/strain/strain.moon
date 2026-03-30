{
  keep: (lst, f) -> [elem for elem in *lst when f elem]
  discard: (lst, f) -> [elem for elem in *lst when not f elem]
}
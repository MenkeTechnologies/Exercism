keep    = (lst, f) -> [elem for elem in *lst when f elem]
discard = (lst, f) -> keep lst, (elem) -> not f elem

{ :keep, :discard }

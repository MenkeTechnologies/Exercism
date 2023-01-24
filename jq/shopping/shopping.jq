.name,
(.ingredients | length),
(.ingredients[] | select(.item == "sugar") | .amount.quantity),
(
  [
    (.ingredients  + ."optional ingredients")[]
    | select(has("substitute"))
    | {(.item): .substitute}
  ]
  | add
)
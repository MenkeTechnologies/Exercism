let allergens =
  Js_dict.fromList([
    ("eggs", 1),
    ("peanuts", 2),
    ("shellfish", 4),
    ("strawberries", 8),
    ("tomatoes", 16),
    ("chocolate", 32),
    ("pollen", 64),
    ("cats", 128),
  ]);

let isAllergicTo = (allergen, mask) =>
  switch (allergen |> Js_dict.get(allergens)) {
  | None => false
  | Some(bit) => mask land bit > 0
  };

let toList = mask =>
  Js_dict.keys(allergens)
  |> Array.to_list
  |> List.filter(key => isAllergicTo(key, mask));

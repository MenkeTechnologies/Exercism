module TreasureChest exposing (..)
type TreasureChest t = TreasureChest String t

getTreasure passwordAttempt (TreasureChest password treasure) =
    if passwordAttempt == password then Just treasure else Nothing
    
multiplyTreasure multiplier (TreasureChest password treasure) =
    TreasureChest password (multiplier treasure)

module TreasureFactory exposing (..)

type TreasureChest treasure = TreasureChest String treasure
type Chest treasure conditions = Chest String treasure

getTreasure passwordAttempt (TreasureChest password treasure) =
    if passwordAttempt == password then
        Just treasure
    else
        Nothing

makeChest password treasure = Chest password treasure

secureChest (Chest password treasure) =
    if String.length password < 8 then
        Nothing
    else
        Chest password treasure |> Just

uniqueTreasures : List (Chest a conditions) -> List (Chest a { conditions | uniqueTreasure : () })
uniqueTreasures chests =
    let
        treasures = chests |> List.map (\(Chest _ treasure) -> treasure)
        isUnique (Chest password treasure) =
            if treasures |> List.filter (\t -> t == treasure) |> List.length |> (==) 1 then
                Chest password treasure |> Just
            else
                Nothing
    in List.filterMap isUnique chests

makeTreasureChest (Chest password treasure) = TreasureChest password treasure


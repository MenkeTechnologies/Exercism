module Allergies exposing (Allergy(..), isAllergicTo, toList)

import Bitwise exposing (and)

type Allergy
    = Eggs
    | Peanuts
    | Shellfish
    | Strawberries
    | Tomatoes
    | Chocolate
    | Pollen
    | Cats


isAllergicTo : Allergy -> Int -> Bool
isAllergicTo allergy score =
    case allergy of
        Eggs -> and score 1 > 0
        Peanuts -> and score 2 > 0
        Shellfish -> and score 4 > 0
        Strawberries -> and score 8 > 0
        Tomatoes -> and score 16 > 0
        Chocolate -> and score 32 > 0
        Pollen -> and score 64 > 0
        Cats -> and score 128 > 0



toList : Int -> List Allergy
toList score =
        [ Eggs , Peanuts , Shellfish , Strawberries
        , Tomatoes , Chocolate , Pollen , Cats ]
        |> List.filter(\n -> isAllergicTo n score)


module ResistorColorDuo exposing (Color(..), value)

type Color
    = Black
    | Brown
    | Red
    | Orange
    | Yellow
    | Green
    | Blue
    | Violet
    | Grey
    | White

colorCode color =
    case color of
        Black -> 0
        Brown -> 1
        Red -> 2
        Orange -> 3
        Yellow -> 4
        Green -> 5
        Blue -> 6
        Violet -> 7
        Grey -> 8
        White -> 9

value colors =
    let
        values = List.map colorCode colors
    in
        case values of
            fst :: snd :: _ -> fst * 10 + snd
            _ -> 0

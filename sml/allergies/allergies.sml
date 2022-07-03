datatype allergen = Eggs | Peanuts | Shellfish | Strawberries | Tomatoes | Chocolate | Pollen | Cats

fun allergicTo (score: int) (a: allergen): bool =
    let
        val allergenValue =
            case a of Eggs => 1
                    | Peanuts => 2
                    | Shellfish => 4
                    | Strawberries => 8
                    | Tomatoes => 16
                    | Chocolate => 32
                    | Pollen => 64
                    | Cats => 128
    in
        IntInf.andb (IntInf.fromInt score, IntInf.fromInt allergenValue) > 0
    end

fun allergies (score: int): allergen list =
  List.filter (fn a => (allergicTo score a)) [Eggs, Peanuts, Shellfish, Strawberries, Tomatoes, Chocolate, Pollen, Cats]

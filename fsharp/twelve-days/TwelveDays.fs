module TwelveDays

let ordinal n =
    match n with
    | 1 -> "first"
    | 2 -> "second"
    | 3 -> "third"
    | 4 -> "fourth"
    | 5 -> "fifth"
    | 6 -> "sixth"
    | 7 -> "seventh"
    | 8 -> "eighth"
    | 9 -> "ninth"
    | 10 -> "tenth"
    | 11 -> "eleventh"
    | 12 -> "twelfth"
    | _ -> $"{n}th"

let gift n =
    match n with
    | 1 -> "a Partridge in a Pear Tree."
    | 2 -> "two Turtle Doves, and"
    | 3 -> "three French Hens,"
    | 4 -> "four Calling Birds,"
    | 5 -> "five Gold Rings,"
    | 6 -> "six Geese-a-Laying,"
    | 7 -> "seven Swans-a-Swimming,"
    | 8 -> "eight Maids-a-Milking,"
    | 9 -> "nine Ladies Dancing,"
    | 10 -> "ten Lords-a-Leaping,"
    | 11 -> "eleven Pipers Piping,"
    | 12 -> "twelve Drummers Drumming,"
    | _ -> $"{n} Gifts Gifting."

let gifts day =
    { day .. -1 .. 1 }
    |> Seq.map gift
    |> String.concat " "

let verse day =
    $"On the {ordinal day} day of Christmas my true love gave to me: {gifts day}"

let recite start stop = [ start..stop ] |> List.map verse

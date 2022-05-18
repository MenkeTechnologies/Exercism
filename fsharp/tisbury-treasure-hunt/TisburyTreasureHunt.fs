module TisburyTreasureHunt

let getCoordinate (line: string * string): string = snd line

let convertCoordinate (coordinate: string): int * char =
    let chars = coordinate.ToCharArray()
    chars[0] |> string |> int, chars[1]

let compareRecords (azarasData: string * string) (ruisData: string * (int * char) * string) : bool = 
    failwith "Please implement the 'compareRecords' function"

let createRecord (azarasData: string * string) (ruisData: string * (int * char) * string) : (string * string * string * string) =
    failwith "Please implement the 'createRecord' function"

module TisburyTreasureHunt

let getCoordinate (line: string * string): string = snd line

let convertCoordinate (coordinate: string): int * char =
    let chars = coordinate.ToCharArray()
    chars[0] |> string |> int, chars[1]

let compareRecords (azarasData: string * string) (ruisData: string * (int * char) * string) : bool = 
        let azCoord = azarasData |> getCoordinate |> convertCoordinate
        let _, ruisCoord, _ = ruisData
        azCoord = ruisCoord

let createRecord (azarasData: string * string) (ruisData: string * (int * char) * string) : (string * string * string * string) =
    if compareRecords azarasData ruisData then
       let treasure, coordinate = azarasData
       let location, _, quadrant = ruisData
       coordinate, location, quadrant, treasure
    else
        "", "", "", ""

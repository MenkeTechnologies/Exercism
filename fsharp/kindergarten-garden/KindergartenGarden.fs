module KindergartenGarden

type Plant = | Violets | Clover | Grass | Radishes | Unknown
let children = [ "Alice"; "Bob"; "Charlie"; "David"; "Eve"; "Fred"; "Ginny"; "Harriet"; "Ileana"; "Joseph"; "Kincaid"; "Larry" ]

let plants (diagram: string) student =
    let i = children |> List.findIndex(fun n -> n = student)
    diagram.Split('\n')
        |> Seq.collect (Seq.skip (i * 2) >> Seq.take 2)
        |> Seq.map (function | 'C' -> Clover | 'G' -> Grass | 'R' -> Radishes | 'V' -> Violets | _ -> Unknown)
        |> List.ofSeq

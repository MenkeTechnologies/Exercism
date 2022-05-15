module Raindrops

let convert (number: int): string =
    let str = [(3,"Pling");(5,"Plang");(7,"Plong")]
            |> Seq.map (fun (k, v) -> if number % k = 0 then v else "")
            |> String.concat ""
    if str <> "" then str else number.ToString()

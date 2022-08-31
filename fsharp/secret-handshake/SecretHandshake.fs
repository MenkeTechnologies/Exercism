module SecretHandshake

let codes =
    [ (1, "wink")
      (2, "double blink")
      (4, "close your eyes")
      (8, "jump") ]

let commands num =
    let r =
        codes
         |> List.filter (fun (code, _) -> num &&& code > 0)
         |> List.map snd
    if num &&& 16 = 16 then List.rev r else r

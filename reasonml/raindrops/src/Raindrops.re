let factorRaindropPairs= [|
    (3, "Pling"),
    (5, "Plang"),
    (7, "Plong"),
  |]
let raindrops = (n) => {
  let drops = factorRaindropPairs
    |> Array.map(((factor, drop)) => n mod factor === 0 ? drop : "" )
    |> Js.Array.joinWith("");
  drops == "" ? string_of_int(n) : drops
}

module Clock

let HR = 60
let DAY = 24 * HR

let create hours minutes =
    let total = hours * HR + minutes

    match total >= 0 with
    | true -> total % DAY
    | false -> DAY - (abs total % DAY)

let add minutes clock = create 0 (clock + minutes)

let subtract minutes = add -minutes

let display clock = $"%02i{clock / 60}:%02i{clock % 60}"

module ResistorColorTests

open FsUnit.Xunit
open Xunit

open ResistorColor

[<Fact>]
let ``Black`` () = colorCode "black" |> should equal 0

[<Fact>]
let ``White`` () = colorCode "white" |> should equal 9

[<Fact>]
let ``Orange`` () = colorCode "orange" |> should equal 3

[<Fact>]
let ``Colors`` () =
    colors
    |> should
        equal
        [ "black"
          "brown"
          "red"
          "orange"
          "yellow"
          "green"
          "blue"
          "violet"
          "grey"
          "white" ]

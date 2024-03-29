module TournamentTests

open FsUnit.Xunit
open Xunit

open Tournament

[<Fact>]
let ``Just the header if no input`` () =
    let rows = []
    let expected = ["Team                           | MP |  W |  D |  L |  P"]
    tally rows |> should equal expected

[<Fact>]
let ``A win is three points, a loss is zero points`` () =
    let rows = ["Allegoric Alaskans;Blithering Badgers;win"]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  1 |  1 |  0 |  0 |  3";
          "Blithering Badgers             |  1 |  0 |  0 |  1 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``A win can also be expressed as a loss`` () =
    let rows = ["Blithering Badgers;Allegoric Alaskans;loss"]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  1 |  1 |  0 |  0 |  3";
          "Blithering Badgers             |  1 |  0 |  0 |  1 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``A different team can win`` () =
    let rows = ["Blithering Badgers;Allegoric Alaskans;win"]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Blithering Badgers             |  1 |  1 |  0 |  0 |  3";
          "Allegoric Alaskans             |  1 |  0 |  0 |  1 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``A draw is one point each`` () =
    let rows = ["Allegoric Alaskans;Blithering Badgers;draw"]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  1 |  0 |  1 |  0 |  1";
          "Blithering Badgers             |  1 |  0 |  1 |  0 |  1" ]
    tally rows |> should equal expected

[<Fact>]
let ``There can be more than one match`` () =
    let rows = 
        [ "Allegoric Alaskans;Blithering Badgers;win";
          "Allegoric Alaskans;Blithering Badgers;win" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  2 |  2 |  0 |  0 |  6";
          "Blithering Badgers             |  2 |  0 |  0 |  2 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``There can be more than one winner`` () =
    let rows = 
        [ "Allegoric Alaskans;Blithering Badgers;loss";
          "Allegoric Alaskans;Blithering Badgers;win" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  2 |  1 |  0 |  1 |  3";
          "Blithering Badgers             |  2 |  1 |  0 |  1 |  3" ]
    tally rows |> should equal expected

[<Fact>]
let ``There can be more than two teams`` () =
    let rows = 
        [ "Allegoric Alaskans;Blithering Badgers;win";
          "Blithering Badgers;Courageous Californians;win";
          "Courageous Californians;Allegoric Alaskans;loss" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  2 |  2 |  0 |  0 |  6";
          "Blithering Badgers             |  2 |  1 |  0 |  1 |  3";
          "Courageous Californians        |  2 |  0 |  0 |  2 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``Typical input`` () =
    let rows = 
        [ "Allegoric Alaskans;Blithering Badgers;win";
          "Devastating Donkeys;Courageous Californians;draw";
          "Devastating Donkeys;Allegoric Alaskans;win";
          "Courageous Californians;Blithering Badgers;loss";
          "Blithering Badgers;Devastating Donkeys;loss";
          "Allegoric Alaskans;Courageous Californians;win" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Devastating Donkeys            |  3 |  2 |  1 |  0 |  7";
          "Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6";
          "Blithering Badgers             |  3 |  1 |  0 |  2 |  3";
          "Courageous Californians        |  3 |  0 |  1 |  2 |  1" ]
    tally rows |> should equal expected

[<Fact>]
let ``Incomplete competition (not all pairs have played)`` () =
    let rows = 
        [ "Allegoric Alaskans;Blithering Badgers;loss";
          "Devastating Donkeys;Allegoric Alaskans;loss";
          "Courageous Californians;Blithering Badgers;draw";
          "Allegoric Alaskans;Courageous Californians;win" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6";
          "Blithering Badgers             |  2 |  1 |  1 |  0 |  4";
          "Courageous Californians        |  2 |  0 |  1 |  1 |  1";
          "Devastating Donkeys            |  1 |  0 |  0 |  1 |  0" ]
    tally rows |> should equal expected

[<Fact>]
let ``Ties broken alphabetically`` () =
    let rows = 
        [ "Courageous Californians;Devastating Donkeys;win";
          "Allegoric Alaskans;Blithering Badgers;win";
          "Devastating Donkeys;Allegoric Alaskans;loss";
          "Courageous Californians;Blithering Badgers;win";
          "Blithering Badgers;Devastating Donkeys;draw";
          "Allegoric Alaskans;Courageous Californians;draw" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Allegoric Alaskans             |  3 |  2 |  1 |  0 |  7";
          "Courageous Californians        |  3 |  2 |  1 |  0 |  7";
          "Blithering Badgers             |  3 |  0 |  1 |  2 |  1";
          "Devastating Donkeys            |  3 |  0 |  1 |  2 |  1" ]
    tally rows |> should equal expected

[<Fact>]
let ``Ensure points sorted numerically`` () =
    let rows = 
        [ "Devastating Donkeys;Blithering Badgers;win";
          "Devastating Donkeys;Blithering Badgers;win";
          "Devastating Donkeys;Blithering Badgers;win";
          "Devastating Donkeys;Blithering Badgers;win";
          "Blithering Badgers;Devastating Donkeys;win" ]
    let expected = 
        [ "Team                           | MP |  W |  D |  L |  P";
          "Devastating Donkeys            |  5 |  4 |  0 |  1 | 12";
          "Blithering Badgers             |  5 |  1 |  0 |  4 |  3" ]
    tally rows |> should equal expected


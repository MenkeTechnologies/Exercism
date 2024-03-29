module YachtTests

open FsUnit.Xunit
open Xunit

open Yacht

[<Fact>]
let ``Yacht`` () =
    score Category.Yacht [Die.Five; Die.Five; Die.Five; Die.Five; Die.Five] |> should equal 50

[<Fact>]
let ``Not Yacht`` () =
    score Category.Yacht [Die.One; Die.Three; Die.Three; Die.Two; Die.Five] |> should equal 0

[<Fact>]
let ``Ones`` () =
    score Category.Ones [Die.One; Die.One; Die.One; Die.Three; Die.Five] |> should equal 3

[<Fact>]
let ``Ones, out of order`` () =
    score Category.Ones [Die.Three; Die.One; Die.One; Die.Five; Die.One] |> should equal 3

[<Fact>]
let ``No ones`` () =
    score Category.Ones [Die.Four; Die.Three; Die.Six; Die.Five; Die.Five] |> should equal 0

[<Fact>]
let ``Twos`` () =
    score Category.Twos [Die.Two; Die.Three; Die.Four; Die.Five; Die.Six] |> should equal 2

[<Fact>]
let ``Fours`` () =
    score Category.Fours [Die.One; Die.Four; Die.One; Die.Four; Die.One] |> should equal 8

[<Fact>]
let ``Yacht counted as threes`` () =
    score Category.Threes [Die.Three; Die.Three; Die.Three; Die.Three; Die.Three] |> should equal 15

[<Fact>]
let ``Yacht of 3s counted as fives`` () =
    score Category.Fives [Die.Three; Die.Three; Die.Three; Die.Three; Die.Three] |> should equal 0

[<Fact>]
let ``Sixes`` () =
    score Category.Sixes [Die.Two; Die.Three; Die.Four; Die.Five; Die.Six] |> should equal 6

[<Fact>]
let ``Full house two small, three big`` () =
    score Category.FullHouse [Die.Two; Die.Two; Die.Four; Die.Four; Die.Four] |> should equal 16

[<Fact>]
let ``Full house three small, two big`` () =
    score Category.FullHouse [Die.Five; Die.Three; Die.Three; Die.Five; Die.Three] |> should equal 19

[<Fact>]
let ``Two pair is not a full house`` () =
    score Category.FullHouse [Die.Two; Die.Two; Die.Four; Die.Four; Die.Five] |> should equal 0

[<Fact>]
let ``Four of a kind is not a full house`` () =
    score Category.FullHouse [Die.One; Die.Four; Die.Four; Die.Four; Die.Four] |> should equal 0

[<Fact>]
let ``Yacht is not a full house`` () =
    score Category.FullHouse [Die.Two; Die.Two; Die.Two; Die.Two; Die.Two] |> should equal 0

[<Fact>]
let ``Four of a Kind`` () =
    score Category.FourOfAKind [Die.Six; Die.Six; Die.Four; Die.Six; Die.Six] |> should equal 24

[<Fact>]
let ``Yacht can be scored as Four of a Kind`` () =
    score Category.FourOfAKind [Die.Three; Die.Three; Die.Three; Die.Three; Die.Three] |> should equal 12

[<Fact>]
let ``Full house is not Four of a Kind`` () =
    score Category.FourOfAKind [Die.Three; Die.Three; Die.Three; Die.Five; Die.Five] |> should equal 0

[<Fact>]
let ``Little Straight`` () =
    score Category.LittleStraight [Die.Three; Die.Five; Die.Four; Die.One; Die.Two] |> should equal 30

[<Fact>]
let ``Little Straight as Big Straight`` () =
    score Category.BigStraight [Die.One; Die.Two; Die.Three; Die.Four; Die.Five] |> should equal 0

[<Fact>]
let ``Four in order but not a little straight`` () =
    score Category.LittleStraight [Die.One; Die.One; Die.Two; Die.Three; Die.Four] |> should equal 0

[<Fact>]
let ``No pairs but not a little straight`` () =
    score Category.LittleStraight [Die.One; Die.Two; Die.Three; Die.Four; Die.Six] |> should equal 0

[<Fact>]
let ``Minimum is 1, maximum is 5, but not a little straight`` () =
    score Category.LittleStraight [Die.One; Die.One; Die.Three; Die.Four; Die.Five] |> should equal 0

[<Fact>]
let ``Big Straight`` () =
    score Category.BigStraight [Die.Four; Die.Six; Die.Two; Die.Five; Die.Three] |> should equal 30

[<Fact>]
let ``Big Straight as little straight`` () =
    score Category.LittleStraight [Die.Six; Die.Five; Die.Four; Die.Three; Die.Two] |> should equal 0

[<Fact>]
let ``No pairs but not a big straight`` () =
    score Category.BigStraight [Die.Six; Die.Five; Die.Four; Die.Three; Die.One] |> should equal 0

[<Fact>]
let ``Choice`` () =
    score Category.Choice [Die.Three; Die.Three; Die.Five; Die.Six; Die.Six] |> should equal 23

[<Fact>]
let ``Yacht as choice`` () =
    score Category.Choice [Die.Two; Die.Two; Die.Two; Die.Two; Die.Two] |> should equal 10


module SgfParsingTests

open FsUnit.Xunit
open Xunit

open SgfParsing

[<Fact>]
let ``Empty input`` () =
    let expected = None
    parse "" |> should equal expected

[<Fact>]
let ``Tree with no nodes`` () =
    let expected = None
    parse "()" |> should equal expected

[<Fact>]
let ``Node without tree`` () =
    let expected = None
    parse ";" |> should equal expected

[<Fact>]
let ``Node without properties`` () =
    let expected = Some (Node (Map.ofList [], []))
    parse "(;)" |> should equal expected

[<Fact>]
let ``Single node tree`` () =
    let expected = Some (Node (Map.ofList [("A", ["B"])], []))
    parse "(;A[B])" |> should equal expected

[<Fact>]
let ``Multiple properties`` () =
    let expected = Some (Node (Map.ofList [("A", ["b"]); ("C", ["d"])], []))
    parse "(;A[b]C[d])" |> should equal expected

[<Fact>]
let ``Properties without delimiter`` () =
    let expected = None
    parse "(;A)" |> should equal expected

[<Fact>]
let ``All lowercase property`` () =
    let expected = None
    parse "(;a[b])" |> should equal expected

[<Fact>]
let ``Upper and lowercase property`` () =
    let expected = None
    parse "(;Aa[b])" |> should equal expected

[<Fact>]
let ``Two nodes`` () =
    let expected = Some (Node (Map.ofList [("A", ["B"])], [Node (Map.ofList [("B", ["C"])], [])]))
    parse "(;A[B];B[C])" |> should equal expected

[<Fact>]
let ``Two child trees`` () =
    let expected = Some (Node (Map.ofList [("A", ["B"])], [Node (Map.ofList [("B", ["C"])], []); Node (Map.ofList [("C", ["D"])], [])]))
    parse "(;A[B](;B[C])(;C[D]))" |> should equal expected

[<Fact>]
let ``Multiple property values`` () =
    let expected = Some (Node (Map.ofList [("A", ["b"; "c"; "d"])], []))
    parse "(;A[b][c][d])" |> should equal expected

[<Fact>]
let ``Escaped property`` () =
    let expected = Some (Node (Map.ofList [("A", ["]b\nc\nd  e \n]"])], []))
    parse "(;A[\]b\nc\nd\t\te \n\]])" |> should equal expected


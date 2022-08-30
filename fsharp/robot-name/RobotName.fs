module RobotName

open System
open System.Collections.Generic

let used = HashSet()
let mkRobot =
    let rand = Random()
    let digit() = '0' + char (rand.Next(10))
    let letter() = 'A' + char (rand.Next(26))
    fun () ->
        fun _ ->
            String.Concat
                [ letter()
                  letter()
                  digit()
                  digit()
                  digit() ]
        |> Seq.initInfinite
        |> Seq.find used.Add

let name robot = robot
let reset _ = mkRobot()

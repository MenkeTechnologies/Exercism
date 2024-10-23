module EliudsEggs

open System
open System.Linq

let eggCount (n: int) = Convert.ToString(n, 2).Count(fun c -> c = '1')

module BirdWatcher

let lastWeek: int[] = [|0;2;5;3;7;8;4|]

let yesterday(counts: int[]) = Array.item 5 counts

let total(counts: int[]) = Array.sum counts

let dayWithoutBirds(counts: int[]) = Array.contains 0 counts

let incrementTodaysCount(counts: int[]): int[] =
    counts[counts.Length - 1] <- counts[counts.Length - 1] +  1
    counts

let oddWeek(counts: int[]): bool =
   match counts with
      | [| _; 0; _; 0; _; 0; _ |]
      | [| _; 10; _; 10; _; 10; _ |]
      | [| 5; _; 5; _; 5; _; 5|] -> true
      | _ -> false

module LogLevels

open System.Text.RegularExpressions
let parseLine input =
    Regex.Match(input, "\[(\w+)\]:\s+(.*\w)")
    |> (fun x ->  (x.Groups[1].Value.ToLower(), x.Groups[2].Value))
    
    
let message (logLine: string): string =
    snd (parseLine logLine)

let logLevel(logLine: string): string =
    fst (parseLine logLine)

let reformat(logLine: string): string =
    let level, message = parseLine logLine
    $"""{message} ({level})"""

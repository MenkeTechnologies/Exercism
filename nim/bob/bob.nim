import strutils, re

proc hey*(phrase: string): string =

    let s = phrase.replace(re"\s", "")
    if s == "":
        return "Fine. Be that way!"

    if s.contains(Letters) and s.toUpperAscii() == s:
        if s.endswith("?"):
            return "Calm down, I know what I'm doing!"
        return "Whoa, chill out!"

    if s.endsWith("?"):
        return "Sure."

    "Whatever."

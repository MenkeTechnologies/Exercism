import tables

const dict = {
  3: "Pling",
  5: "Plang",
  7: "Plong",
}.toTable

proc convert*(num: int): string =
    for k, v in dict:
        if num mod k == 0:
            result.add(v)
    if result == "": result = $num

roman = function(arabic) {
  conversion = list(M = 1000, CM = 900, D = 500, CD = 400, 
                     C = 100, XC = 90, L = 50, XL = 40, 
                     X = 10, IX = 9, V = 5, IV = 4, I = 1)
  result = c()
  for (roman in names(conversion)) {
    value = conversion[[roman]]
    result = append(result, replicate(arabic / value, roman))
    arabic = arabic %% value
  }
  paste(result, collapse = "")
}

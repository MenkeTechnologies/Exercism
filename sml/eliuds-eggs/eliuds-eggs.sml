fun eggCount 0 = 0
  | eggCount n = n mod 2 + eggCount (n div 2)

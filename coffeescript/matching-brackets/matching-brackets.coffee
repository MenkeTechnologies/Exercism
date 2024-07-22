module.exports = class 
  @isPaired: (s) ->
    stk = []
    matchingBrackets = { '[': ']', '{': '}', '(': ')' }
    for c in s
      if c in Object.keys(matchingBrackets)
        stk.push c
      else if c in Object.values(matchingBrackets)
        return false if stk.length is 0 or matchingBrackets[stk.pop()] != c
    stk.length == 0

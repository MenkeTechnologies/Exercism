module.exports = class
  @keep: (lst, f) -> x for x in lst when f(x)
  @discard: (lst, f) -> x for x in lst when !f(x)

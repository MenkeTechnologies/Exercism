module.exports = class
  @append: (lst1, lst2) -> @concat([lst1, lst2])
  @concat: (lsts) ->
    results = []
    for lst in lsts
      for elem in lst
        results.push elem
    results
  @filter: (lst, f) -> (elem for elem in lst when f(elem))
  @mylength: (lst) -> @foldl(lst, ((acc, _) -> acc + 1), 0)
  @map: (lst, f) -> (f(elem) for elem in lst)

  @foldl: (lst, f, initial) ->
    acc = initial
    for elem in lst
      acc = f(acc, elem)
    acc
  @foldr: (lst, f, initial) -> @foldl(@reverse(lst), f, initial)

  @reverse: (lst) -> if lst.length == 0
    lst
  else
    (lst[index] for index in [(lst.length - 1)..0])

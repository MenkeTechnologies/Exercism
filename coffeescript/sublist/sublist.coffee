Classification =
  equal: 'equal'
  unequal: 'unequal'
  sublist: 'sublist'
  superlist: 'superlist'

class Sublist
  @classify: (lst1, lst2) ->
    s1 = lst1.join(',') + ','; s2 = lst2.join(',') + ','
    
    if s1 == s2
      Classification.equal
    else if s1.includes(s2)
      Classification.superlist
    else if s2.includes(s1)
      Classification.sublist
    else
      Classification.unequal

module.exports = {Sublist, Classification}

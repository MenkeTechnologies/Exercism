enum Classification { equal, unequal, sublist, superlist }

class Sublist {

  Classification sublist(List lst1, List lst2) {
    String s1 = lst1.join(',') + ',';
    String s2 = lst2.join(',') + ',';
    return s1 == s2
        ? Classification.equal
        : s1.contains(s2)
            ? Classification.superlist
            : s2.contains(s1)
                ? Classification.sublist
                : Classification.unequal;
  }
}

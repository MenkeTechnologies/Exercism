export class List {
  constructor(lst = []) {
    this.lst = lst;
  }

  compare = other => {
    const s1 = this.lst.join(','), s2 = other.lst.join(',');
    let oneInTwo = false, twoInOne = false;
    if (s1.includes(s2)) twoInOne = true;
    if (s2.includes(s1)) oneInTwo = true;
    return oneInTwo && twoInOne ? 'EQUAL' : oneInTwo ? 'SUBLIST' : twoInOne ? 'SUPERLIST' : 'UNEQUAL';
  };
}

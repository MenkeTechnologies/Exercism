export class List {
  constructor(lst = []) {
    this.lst = lst;
  }

  compare = other => {
    const s1 = this.lst.join(','), s2 = other.lst.join(',');
    return s1 == s2 ? 'EQUAL' : s2.includes(s1) ? 'SUBLIST' : s1.includes(s2)? 'SUPERLIST' : 'UNEQUAL';
  };
}

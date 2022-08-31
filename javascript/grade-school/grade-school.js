export class GradeSchool {
  constructor() {
    this._roster = {};
  }

  roster = () => this.deepClone(this._roster);

  add = (name, grade) => {
    const students = this._roster[grade] || [];
    for (const [grade, students] of Object.entries(this._roster))
      if (students.includes(name)) this._roster[grade] = students.filter(student => student !== name);
    this._roster[grade] = [...students, name].sort();
  };

  grade = gr => this.deepClone(this._roster[gr ] || []);

  deepClone = obj => JSON.parse(JSON.stringify(obj));
}

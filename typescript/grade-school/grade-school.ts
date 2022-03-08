export class GradeSchool {
    private _roster: { [_: number]: string[] };

    constructor() {
        this._roster = {};
    }

    roster = () => JSON.parse(JSON.stringify(this._roster));

    add = (name: string, grade: number) => {
        for (const [_, names] of Object.entries(this._roster)) {
            if (names.indexOf(name) !== -1) {
                names.splice(names.indexOf(name), 1);
                break;
            }
        }
        this._roster[grade] = [...(this._roster[grade] || []), name].sort()
        return this._roster[grade];
    };

    grade = (grade: number) => (this._roster[grade] || []).slice().sort();
}

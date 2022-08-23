const nameCache = new Set();
const randLet = (start: string, range: number) => String.fromCharCode(start.charCodeAt(0) + range * Math.random());
const makeName = () =>
    [...Array(5).keys()].map(i => i < 2 ? randLet('A', 26) : randLet('0', 10)).join('')

export class Robot {
    private _name = "";

    constructor() {
        this.resetName()
    }

    get name() {
        return this._name;
    }

    resetName() {
        let name = makeName();
        while (nameCache.has(name)) {
            name = makeName();
        }
        nameCache.add(name);
        this._name = name;
    }

    static releaseNames() {
        nameCache.clear();
    }
}

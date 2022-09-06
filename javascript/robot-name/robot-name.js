const nameCache = new Set();
const randLet = (start, range) => String.fromCharCode(start.charCodeAt(0) + range * Math.random());

const makeName = () => [...Array(5).keys()].map(i => i < 2 ? randLet('A', 26) : randLet('0', 10)).join('')

export class Robot {
    constructor() {
        this.reset();
    }

    get name() {
        return this._name;
    }

    reset() {
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
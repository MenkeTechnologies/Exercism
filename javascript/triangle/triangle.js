export class Triangle {
    constructor(...sides) {
        this._sorted = sides.sort((a, b) => a - b)
        this._set = new Set(sides);
    }

    valid = () => this._sorted[0] > 0 && this._sorted[0] + this._sorted[1] >= this._sorted[2]

    get isEquilateral() {
        return this.valid() && this._set.size === 1
    }

    get isIsosceles() {
        return this.valid() && this._set.size <= 2
    }

    get isScalene() {
        return this.valid() && this._set.size === 3
    }
}
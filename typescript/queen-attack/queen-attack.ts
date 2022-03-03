type Position = readonly [number, number]

type Positions = {
    white: Position
    black: Position
}

export class QueenAttack {
    public readonly black: Position
    public readonly white: Position

    constructor({white, black}: Partial<Positions> = {}) {
        this.white = white ?? [7, 3];
        this.black = black ?? [0, 3];

        [...this.white, ...this.black].forEach(i => {
            if (i < 0 || i > 7) throw  new Error("Queen must be placed on the board")
        })

        if (this.white[0] == this.black[0] && this.white[1] == this.black[1])
            throw new Error("Queens cannot share the same space");

    }

    get canAttack() {
        const dx = Math.abs(this.white[0] - this.black[0]);
        const dy = Math.abs(this.white[1] - this.black[1]);

        return dx == dy || dx == 0 || dy == 0;
    }

    toString = () =>
        [...Array(8).keys()].map(r =>
            [...Array(8).keys()]
                .map(c => this.white[0] == r && this.white[1] == c ? "W" : this.black[0] == r && this.black[1] == c ? "B" : "_").join(" ")
        ).join("\n")

}

export class Squares {
    constructor(num) {
        this.values = [...Array(num).keys()].map(k => k + 1)
        this.sumOfSquares = this.values.reduce((acc, n) => n ** 2 + acc, 0);
        this.squareOfSum = this.values.reduce((acc, n) => n + acc, 0) ** 2;
        this.difference = this.squareOfSum - this.sumOfSquares;
    }
}


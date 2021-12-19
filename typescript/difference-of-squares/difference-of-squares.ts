export default class Squares {
    private readonly squareOfSum: number;
    private readonly sumOfSquares: number;
    private readonly difference: number;
    private rng = (n) => Array.from(Array(n).keys()).map(n => n + 1);
    private sum = (rng, exp) => rng.reduce((acc, n) => acc + Math.pow(n, exp), 0);

    constructor(private num: number) {

        this.squareOfSum = Math.pow(this.sum(this.rng(num), 1), 2)
        this.sumOfSquares = this.sum(this.rng(num), 2)

        this.difference = this.squareOfSum - this.sumOfSquares


    }


}

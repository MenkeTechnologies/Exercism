export class Anagram {
    private input: string
    private sorted: string

    constructor(input: string) {
        this.input = input;
        this.sorted = input.toLowerCase().split('').sort().join('');
    }

    public matches = (...cand: string[]): string[] => cand.filter(w => w.toLowerCase() !== this.input.toLowerCase() && w.toLowerCase().split('').sort().join('') === this.sorted);
}

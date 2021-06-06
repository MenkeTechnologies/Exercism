const ALPHABET = 'abcdefghijklmnopqrstuvwxyz';

export default class Pangram {

    private readonly alphabetLetters;
    private readonly sentence;

    constructor(sentence: string) {
        this.alphabetLetters = ALPHABET.split('');
        this.sentence = sentence.toLowerCase();
    }


    isPangram() {

        for (let letter of this.alphabetLetters) {
            if (!this.sentence.includes(letter)) {
                return false;
            }
        }

        return true;
    }
}

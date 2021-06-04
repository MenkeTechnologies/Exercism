class Transcriptor {

    private readonly map = new Map([
        ["G", "C"],
        ["C", "G"],
        ["T", "A"],
        ["A", "U"]
    ])

    toRna(str: string): string {

        let translated = "";

        for (let ch of str) {
            let mapped = this.map.get(ch);
            if (mapped == undefined) {
                throw new Error(`Invalid input DNA.`)
            }
            translated += mapped;
        }

        return translated;


    }
}

export default Transcriptor

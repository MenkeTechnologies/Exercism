export class ResistorColor {
    private readonly colors: string[]

    private readonly myMap = new Map([
        ["black", "0"],
        ["brown", "1"],
        ["red", "2"],
        ["orange", "3"],
        ["yellow", "4"],
        ["green", "5"],
        ["blue", "6"],
        ["violet", "7"],
        ["grey", "8"],
        ["white", "9"],
    ]);

    constructor(colors: string[]) {
        if (colors.length <= 1) {
            throw new Error("At least two colors need to be present");
        }
        this.colors = colors;
    }

    value = (): number => {
        let newVar = this.myMap.get(this.colors[0])
        let newVar1 = this.myMap.get(this.colors[1]);
        if (newVar == undefined || newVar1 == undefined) {

            throw new Error("Undefined colors");
        }
        const n = newVar + newVar1;
        return parseInt(n);
    }
}

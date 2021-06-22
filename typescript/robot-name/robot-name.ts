export default class Robot {
    private static map: Map<string, boolean> = new Map();
    private nam: string;

    constructor() {
        this.nam = ""
    }

    public get name(): string {
        if (this.nam == "") {

            while (true) {

                const n = this.genName();

                if (!Robot.map.get(n)) {
                    Robot.map.set(n, true)
                    this.nam = n;
                    return this.nam;
                }
            }
        } else {
            return this.nam;
        }
    }

    private genName() {
        let name = String.fromCharCode(65 + Math.round(Math.random() * 26));

        name += String.fromCharCode(65 + Math.round(Math.random() * 26));
        name += Math.round(Math.random() * 10);
        name += Math.round(Math.random() * 10);
        name += Math.round(Math.random() * 10);

        return name;
    }

    public static releaseNames(): void {
        this.map.clear();
    }

    public resetName(): void {
        this.nam = ""
    }
}

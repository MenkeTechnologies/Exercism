export class Gigasecond {
    private d: number;

    constructor(date: Date) {
        this.d = date.getTime() + 1e12;
    }

    date = () => new Date(this.d)
}

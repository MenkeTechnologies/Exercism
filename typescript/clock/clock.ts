const MINUTES_IN_DAY = 24 * 60

export class Clock {
    private readonly time: number = 0

    constructor(hour = 0, minute = 0) {
        const time = (hour * 60 + minute) % MINUTES_IN_DAY
        this.time = time < 0 ? (time + MINUTES_IN_DAY) : time
    }

    public toString = () => `${String(Math.trunc(this.time / 60)).padStart(2, '0')}:${String(this.time % 60).padStart(2, '0')}`;

    public plus = (minutes: number) => new Clock(0, this.time + minutes);

    public minus = (minutes: number) => new Clock(0, this.time - minutes);

    public equals = (other: Clock) => other.time === this.time;
}

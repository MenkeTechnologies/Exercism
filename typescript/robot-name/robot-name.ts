export default class Robot {
    constructor() {
    }

    public get name(): string {
        throw new Error('Implement Robot#name')
    }

    public static releaseNames(): void {
        throw new Error('Implement Robot.releaseNames')
    }

    public resetName(): void {
        throw new Error('Implement Robot#resetName')
    }
}

export class InvalidInputError extends Error {
    constructor(msg: string) {
        super()
        this.message = msg || 'Invalid Input'
    }
}

export enum Direction {
    North = 'north',
    East = 'east',
    South = 'south',
    West = 'west'
}

type Coordinates = [number, number]

const leftRef: { [index: string]: Direction } = {
        north: Direction.West, west: Direction.South, south: Direction.East, east: Direction.North
    },
    rightRef: { [index: string]: Direction } = {
        north: Direction.East, east: Direction.South, south: Direction.West, west: Direction.North
    };

export class Robot {
    _x: number;
    _y: number;
    _direction: Direction;

    constructor(options: { x: number; y: number; direction: Direction }) {
        this._direction = options?.direction || Direction.North;
        this._x = options?.x || 0;
        this._y = options?.y || 0;
    }

    get bearing(): Direction {
        return this._direction;
    }

    get coordinates(): Coordinates {
        return [this._x, this._y];
    }

    place = ({x, y, direction}: { x: number; y: number; direction: Direction }) => {
        this._x = x;
        this._y = y;
        if (!Object.values(Direction).includes(direction)) {
            throw new InvalidInputError('bad direction');
        }
        this._direction = direction;
    };

    evaluate = (instructions: string) => {
        instructions.split('').forEach(code => {
            switch (code) {
                case 'L':
                    this._direction = leftRef[this._direction];
                    break;
                case 'R':
                    this._direction = rightRef[this._direction];
                    break;
                case 'A':
                    switch (this._direction) {
                        case Direction.North:
                            ++this._y;
                            break;
                        case Direction.South:
                            --this._y;
                            break;
                        case Direction.West:
                            --this._x;
                            break;
                        case Direction.East:
                            ++this._x;
                            break;
                    }
            }
        });
    };
}

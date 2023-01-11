export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || 'Invalid Input';
  }
}

const DIRECTIONS = ["north", "east", "south", "west"];

export class Robot {
  x = 0;
  y = 0;
  direction = "north";
  coordChanges = [[0, 1], [1, 0], [0, -1], [-1, 0]];

  get bearing() {
    return this.direction;
  }

  get coordinates() {
    return [this.x, this.y];
  }

  place = ({x, y, direction}) => {
    if (!DIRECTIONS.includes(direction))
      throw new InvalidInputError()
    this.direction = direction;
    this.x = x;
    this.y = y;
  };
  dirIdx = () => DIRECTIONS.indexOf(this.direction);
  turn = inc => {
    this.direction = DIRECTIONS[(this.dirIdx() + inc + 4) % 4];
  };
  turnLeft = () => this.turn(-1)
  turnRight = () => this.turn(1)
  advance = () => {
    const [dx, dy] = this.coordChanges[this.dirIdx()];
    this.x += dx;
    this.y += dy;
  };
  evaluate = instructions => {
    instructions.split('').forEach(cmd =>
      cmd === "R" ? this.turnRight() : cmd === "L" ?
        this.turnLeft() : cmd === "A" ? this.advance() :
          (() => {
            throw new InvalidInputError(`Command ${cmd}`)
          })()
    );
  };
}

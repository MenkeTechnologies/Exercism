

export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || 'Invalid Input';
  }
}

export class Robot {
  get bearing() {
    throw new Error('Remove this statement and implement this function');
  }

  get coordinates() {
    throw new Error('Remove this statement and implement this function');
  }

  place({ x, y, direction }) {
    throw new Error('Remove this statement and implement this function');
  }

  evaluate(instructions) {
    throw new Error('Remove this statement and implement this function');
  }
}

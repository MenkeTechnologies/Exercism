export class Triangle {
  private sorted: number[]
  private set: Set<number>;

  constructor(...sides: number[]) {
    this.sorted = sides.sort((a,b) => a - b)
    this.set = new Set(sides);
  }

  valid = () => this.sorted[0] > 0 && this.sorted[0] + this.sorted[1] >= this.sorted[2]

  get isEquilateral() {
    return this.valid() && this.set.size === 1
  }

  get isIsosceles() {
    return this.valid() && this.set.size <= 2
  }

  get isScalene() {
    return this.valid() && this.set.size === 3
  }
}

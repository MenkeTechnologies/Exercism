export class Allergies {
  private MAP : {[key: string]: number} = {
    eggs: 1,
    peanuts: 2,
    shellfish: 4,
    strawberries: 8,
    tomatoes: 16,
    chocolate: 32,
    pollen: 64,
    cats: 128,
  }
  mask: number;

  constructor(allergenIndex: number) {
    this.mask = allergenIndex
  }

  list = () => Object.keys(this.MAP).filter(k => this.allergicTo(k));
  allergicTo = (allergen: string) => (this.MAP[allergen] & this.mask) > 0;
}

const MAP = {
    eggs: 1,
    peanuts: 2,
    shellfish: 4,
    strawberries: 8,
    tomatoes: 16,
    chocolate: 32,
    pollen: 64,
    cats: 128,
}

export class Allergies {
    constructor(mask) {
        this.mask = mask
    }

    list = () => Object.keys(MAP).filter(a => this.allergicTo(a))

    allergicTo = a => (this.mask & MAP[a] || 0) > 0
}
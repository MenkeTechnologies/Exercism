export const abilityModifier = n =>
    n < 3 ? (() => { throw new Error('Ability scores must be at least 3') })() :
    n > 18 ? (() => { throw new Error('Ability scores can be at most 18'); })() :
    Math.floor((n - 10) / 2);


export class Character {
    characteristics = [
        'strength', 'dexterity', 'constitution',
        'intelligence', 'wisdom', 'charisma'
    ];
    static rollAbility = () => [...Array(4).keys()].map(_i => Math.floor(Math.random() * 6 + 1))
        .sort().slice(1).reduce((acc, n) => acc + n);

    constructor() {
        this.characteristics.forEach(c => this[c] = Character.rollAbility());
        this.hitpoints = 10 + abilityModifier(this.constitution);
    }
}

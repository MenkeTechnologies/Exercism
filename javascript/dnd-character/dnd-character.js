export const abilityModifier = (num) => {
  if (num >= 3 && num <= 18) {
    return Math.floor((num - 10) / 2);
  } else if (num < 3) {
    throw new Error('Ability scores must be at least 3');
  } else if (num > 18) {
    throw new Error('Ability scores can be at most 18');
  }
};

export class Character {
  static rollAbility = () =>
    [...Array(4).keys()].map(_ => Math.floor(Math.random() * 6 + 1))
      .sort().slice(1).reduce((acc, n) => acc + n);

  constructor() {
    this._str = Character.rollAbility();
    this._dex = Character.rollAbility();
    this._con = Character.rollAbility();
    this._int = Character.rollAbility();
    this._wis = Character.rollAbility();
    this._cha = Character.rollAbility();
    this._hit = 10 + abilityModifier(this._con);
  }

  get strength() {
    return this._str;
  }

  get dexterity() {
    return this._dex;
  }

  get constitution() {
    return this._con;
  }

  get intelligence() {
    return this._int;
  }

  get wisdom() {
    return this._wis;
  }

  get charisma() {
    return this._cha;
  }

  get hitpoints() {
    return this._hit;
  }
}

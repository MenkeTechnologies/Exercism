export class DnDCharacter {
  public static generateAbilityScore = () => Math.floor(Math.random() * 16) + 3;

  public static getModifierFor = (abilityValue: number) => Math.floor((abilityValue - 10) / 2);

  readonly strength = DnDCharacter.generateAbilityScore()
  readonly dexterity = DnDCharacter.generateAbilityScore()
  readonly constitution = DnDCharacter.generateAbilityScore()
  readonly intelligence = DnDCharacter.generateAbilityScore()
  readonly wisdom = DnDCharacter.generateAbilityScore()
  readonly charisma = DnDCharacter.generateAbilityScore()
  readonly hitpoints = 10 + DnDCharacter.getModifierFor(this.constitution)

}

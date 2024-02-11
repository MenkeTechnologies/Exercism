export class ValueError extends Error {
  constructor() {
    super('Bank account error');
  }
}
export class BankAccount {
  private isOpen = false;
  private _balance = 0;
  public open(): void {
    if (this.isOpen) throw new ValueError();
    this.isOpen = true;
  }
  public close(): void {
    if (!this.isOpen) throw new ValueError();
    this.isOpen = false;
    this._balance = 0;
  }
  public deposit(amt: number): void {
    if (!this.isOpen || amt < 0) throw new ValueError();
    this._balance += amt;
  }
  public withdraw(amt: number): void {
    if (!this.isOpen || amt < 0 || amt > this._balance) throw new ValueError();
    this._balance -= amt;
  }
  public get balance(): number {
    if (!this.isOpen) throw new ValueError();
    return this._balance;
  }
}

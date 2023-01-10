export class BankAccount {
    constructor() {
        this._amount = 0;
        this._closed = true;
        this.error = new ValueError();
    }
    get balance() {
        if (this._closed) throw this.error;
        return this._amount;
    }
    open = () => {
        if (!this._closed) throw this.error;
        this._closed = false;
    };
    close = () => {
        if (this._closed) throw this.error;
        this._closed = true;
        this._amount = 0;
    };
    deposit = amount => {
        if (this._closed) throw this.error;
        if (amount < 0) throw this.error;
        this._amount += amount;
    };
    withdraw = amount => {
        if (this._closed) throw this.error;
        if (amount < 0) throw this.error;
        if (this._amount < amount) throw this.error;
        this._amount -= amount;
    };
}
export class ValueError extends Error {
    constructor() {
        super("Bank account error");
    }
}

export class BankAccount {
    constructor() {
        throw new Error('Remove this statement and implement this function');
    }

    open() {
        throw new Error('Remove this statement and implement this function');
    }

    close() {
        throw new Error('Remove this statement and implement this function');
    }

    deposit() {
        throw new Error('Remove this statement and implement this function');
    }

    withdraw() {
        throw new Error('Remove this statement and implement this function');
    }

    get balance() {
        throw new Error('Remove this statement and implement this function');
    }
}

export class ValueError extends Error {
    constructor() {
        super('Bank account error');
    }
}
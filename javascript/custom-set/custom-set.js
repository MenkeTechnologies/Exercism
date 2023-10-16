export class CustomSet {
    constructor(arr = []) {
        this.lst = arr.sort((a, b) => a - b);
    }

    empty = () => !this.lst.length;

    contains = element => this.lst.includes(element);

    add = element => {
        if (this.lst.indexOf(element) < 0) this.lst.push(element);
        this.lst = this.lst.sort((a, b) => a - b);
        return this;
    };

    subset = anotherSet => {
        if (!this.lst.length) return true;
        return this.lst.every(item => anotherSet.lst.indexOf(item) > -1);
    };

    disjoint = anotherSet => anotherSet.lst.every(item => this.lst.indexOf(item) === -1);

    eql = anotherSet => anotherSet.lst.toString() === this.lst.toString();

    union = anotherSet => {
        const joined = [...this.lst, ...anotherSet.lst];
        this.lst = joined.filter((item, index) => joined.indexOf(item) === index).sort((a, b) => a - b);
        return this;
    };

    intersection = anotherSet => {
        this.lst = this.lst.reduce((total, current) => {
            if (anotherSet.lst.indexOf(current) > -1) total.push(current);
            return total;
        }, []);
        return this;
    };

    difference = anotherSet => {
        this.lst = this.lst.reduce((total, current) => {
            if (anotherSet.lst.indexOf(current) < 0) total.push(current);
            return total;
        }, []);
        return this;
    };
}

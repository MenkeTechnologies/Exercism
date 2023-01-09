type Comparison = 'equal' | 'sublist' | 'superlist' | 'unequal';

export class List {
    private _lst: number[];

    constructor(...items: number[]) {
        this._lst = items;
    }

    compare(other: List): Comparison {
        const self = this._lst.join(',');
        const target = other._lst.join(',');
        return self === target
            ? 'equal'
            : target.indexOf(self) !== -1
                ? 'sublist'
                : self.indexOf(target) !== -1
                    ? 'superlist'
                    : 'unequal';
    }
}

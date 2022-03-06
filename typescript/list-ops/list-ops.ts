export class List<T> {

    constructor(public items: T[]) {
    }

    public static create<T>(...values: T[]): List<T> {
        return new List(values);
    }

    public append(list: List<T>): List<T> {
        this.items = [...this.items, ...list.items];
        return this;
    }

    public concat(list: List<List<T>>): List<T> {
        // @ts-ignore
        return list.foldl((acc, n) => acc.append(n), new List(this.items));
    }

    filter<U>(f: (_: U) => boolean): List<U> {
        // @ts-ignore
        return new List(this.items.reduce((acc, n) => [...acc, ...(f(n) ? [n] : [])], []));

    }

    length(): number {
        return this.items.length;
    }

    map<U>(f: (_: T) => U): List<U> {
        // @ts-ignore
        return List.create(...(this.items.reduce((acc, n) => [...acc, f(n)], [])));
    }

    foldl<U, V>(f: (_acc: V, _n: U) => V, init: V): V {
        this.items.forEach(n => {
            // @ts-ignore
            init = f(init, n);
        })
        return init;
    }

    foldr<U, V>(f: (_acc: V, _n: U) => V, init: V): V {
        this.reverse();

        this.items.forEach(n => {
            // @ts-ignore
            init = f(init, n);
        })
        return init;
    }

    reverse(): List<T> {
        this.items = this.items.reverse()
        return this;
    }

    forEach(f: (_: T) => void): void {
        this.items.forEach(f);
    }
}

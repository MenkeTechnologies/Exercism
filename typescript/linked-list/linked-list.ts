class Node<TElement> {
    previous?: Node<TElement>;
    next?: Node<TElement>;
    value: TElement;

    constructor(value: TElement) {
        this.value = value;
    }
}

export class LinkedList<TElement> {
    first?: Node<TElement>;
    last?: Node<TElement>;

    public push = (element: TElement) => {
        const node = new Node(element);
        if (this.last) {
            this.last.next = node;
            node.previous = this.first;
        } else {
            this.first = node;
        }
        this.last = node;
    };

    public pop = (): TElement => {
        if (!this.last) {
            throw new Error("Cannot pop an empty list");
        }
        const node = this.last;
        this.last = node.previous;
        if (this.last) {
            this.last.next = undefined;
        } else {
            this.first = undefined;
        }
        return node.value;
    };

    public shift = (): TElement => {
        if (!this.first) {
            throw new Error("Cannot shift an empty list");
        }
        const node = this.first;
        this.first = this.first.next;
        if (this.first) {
            this.first.previous = undefined;
        } else {
            this.last = undefined;
        }
        return node.value;
    };

    public unshift = (element: TElement) => {
        const node = new Node(element);
        if (this.first) {
            this.first.previous = node;
            node.next = this.first;
        } else {
            this.last = node;
        }
        this.first = node;
    };

    public delete = (element: TElement) => {
        let node = this.first;
        while (node) {
            if (node.value === element) {
                if (node.previous) node.previous.next = node.next;
                if (node.next) node.next.previous = node.previous;
                if (this.first === node) this.first = undefined;
                if (this.last === node) this.last = undefined;
                break;
            }
            node = node.next;
        }
    };

    public count = (): number => {
        let count = 0;
        let node = this.first;
        while (node) {
            count++;
            node = node.next;
        }
        return count;
    };
}

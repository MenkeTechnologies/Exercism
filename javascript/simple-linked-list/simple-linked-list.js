export class Element {
    constructor(value, next = null) {
        this.value = value
        this.next = next
    }
}

export class List {
    constructor(values = []) {
        this.head = null
        this.length = 0
        values.forEach(value => this.add(new Element(value)))
    }

    * [Symbol.iterator]() {
        for (let node = this.head; node != null; node = node.next) {
            yield node.value
        }
    }

    add(nextValue) {
        nextValue.next = this.head
        this.head = nextValue
        ++this.length
    }

    toArray = () => [...this];

    reverse = () => new List(this.toArray());
}

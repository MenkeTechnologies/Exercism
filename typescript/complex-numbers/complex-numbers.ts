export class ComplexNumber {
    constructor(private realn: number, private imaginary: number) {
        this.realn = realn;
        this.imaginary = imaginary;
    }

    public get real(): number {
        return this.realn
    }

    public get imag(): number {
        return this.imaginary
    }

    public add(o: ComplexNumber): ComplexNumber {
        return new ComplexNumber(this.realn + o.realn, this.imaginary + o.imaginary)
    }

    public sub(o: ComplexNumber): ComplexNumber {
        return new ComplexNumber(this.realn - o.realn, this.imaginary - o.imaginary)
    }

    public div(o: ComplexNumber): ComplexNumber {
        return new ComplexNumber((this.realn * o.realn + this.imaginary * o.imaginary) / (o.realn * o.realn + o.imaginary * o.imaginary), (this.imaginary * o.realn - this.realn * o.imaginary) / (o.realn * o.realn + o.imaginary * o.imaginary))
    }

    public mul(o: ComplexNumber): ComplexNumber {
        return new ComplexNumber(this.realn * o.realn - this.imaginary * o.imaginary, this.imaginary * o.realn + this.realn * o.imaginary)
    }

    public get abs(): number {
        return Math.sqrt(this.realn * this.realn + this.imaginary * this.imaginary)
    }

    public get conj(): ComplexNumber {
        return new ComplexNumber(this.realn, this.imaginary ? this.imaginary * -1 : 0)
    }

    public get exp(): ComplexNumber {
        return new ComplexNumber(Math.E ** this.realn * Math.cos(this.imaginary), Math.sin(this.imaginary))
    }
}

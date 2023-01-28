const DEFAULT_STUDENTS = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Eve',
    'Fred',
    'Ginny',
    'Harriet',
    'Ileana',
    'Joseph',
    'Kincaid',
    'Larry',
];

const PLANT_CODES = {
    G: 'grass',
    V: 'violets',
    R: 'radishes',
    C: 'clover',
};

export class Garden {
    constructor(diagram, students = DEFAULT_STUDENTS) {
        this.diagram = diagram.split("\n")
        this.allStudents = students.sort()
    }

    plants(student) {
        const position = this.allStudents.findIndex(curStudent => student === curStudent) * 2
        const studentCodes = this.diagram.map(codes => codes.slice(position, position + 2)).join("").split("")
        return studentCodes.map(code => PLANT_CODES[code])
    }
}

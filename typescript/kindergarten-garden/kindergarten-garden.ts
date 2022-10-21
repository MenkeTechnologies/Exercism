const DEFAULT_STUDENTS: Student[] = [
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
]
const PLANT_CODES = {
    G: 'grass',
    V: 'violets',
    R: 'radishes',
    C: 'clover',
} as const
type Student = string
type Plant = typeof PLANT_CODES[keyof typeof PLANT_CODES]
type Plants = Plant[]

export class Garden {
    diagram: String[]
    allStudents: Student[]

    constructor(diagram: string, students = DEFAULT_STUDENTS) {
        this.diagram = diagram.split("\n")
        this.allStudents = students.sort()
    }

    public plants = (student: Student): Plants => {
        const position = this.allStudents.findIndex(curStudent => student === curStudent) * 2
        const studentCodes = this.diagram.map(codes => codes.slice(position, position + 2)).join("").split("")
        return studentCodes.map(code => PLANT_CODES[code as keyof typeof PLANT_CODES])
    };
}

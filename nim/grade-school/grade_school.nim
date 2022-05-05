import sequtils, algorithm
type
  Student = tuple[name: string, grade: int]
  School* = object
    students*: seq[Student]

func `<`(a,b: Student): bool =
  (a.grade, a.name) < (b.grade, b.name)

func roster*(school: School): seq[string] =
    school.students.sorted.mapIt(it.name)

func grade*(school: School, grade: int): seq[string] =
    school.students.filterIt(it.grade == grade)
    .mapIt(it.name).sorted

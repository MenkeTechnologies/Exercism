class GradeSchool {

    var roster: [Int: [String]] = [:]

    public var sortedRoster: [Int: [String]] {
        roster.reduce(into: [:]) {
            $0[$1.key] = $1.value.sorted()
        }
    }

    public func addStudent(_ name: String, grade: Int) {
        roster[grade, default: []].append(name)
    }

    public func studentsInGrade(_ grade: Int) -> [String] {

        roster[grade, default: []]
    }
}

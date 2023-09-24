class Student {
    [int]$Grade
    [string]$Name
    Student([int]$grade, [string]$name) {
        $this.Grade = $grade
        $this.Name = $name
    }
}
class Roster {
    [Student[]]$Student = @()

    [void] AddStudent([int]$grade, [string]$name) {
        $this.Student += [Student]::new($grade, $name)
    }
    [Student[]] GetRoster() {
        $this.Student | Sort-Object -Property Grade,Name
    }
    [Student[]] GetRoster([int]$grade) {
        $this.Student | Where-Object -Property Grade -eq $grade | Sort-Object -Property Name
    }
}

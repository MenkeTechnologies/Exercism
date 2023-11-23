class Student {
    [int]$Grade
    [string]$Name
    Student([int]$Grade, [string]$Name) {
        $this.Grade = $Grade
        $this.Name = $Name
    }
}
class Roster {
    [Student[]]$Students
    Roster() {
        $this.Students = @()
    }
    [bool] AddStudent([int]$Grade, [string]$Name) {
        if (-not ($this.Students | ? Name -eq $Name)) {
            $this.Students += [Student]::new($Grade, $Name)
            return $true
        }
        return $false
    }
    [Student[]] GetRoster() {
        return $this.Students | Sort-Object Grade, Name
    }
    [Student[]] GetRoster([int]$Grade) {
        return $this.Students | ? Grade -eq $Grade | Sort-Object Name
    }
}

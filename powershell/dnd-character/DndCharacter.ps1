Class Character {
    [int] $Strength
    [int] $Dexterity
    [int] $Constitution
    [int] $Intelligence
    [int] $Wisdom
    [int] $Charisma
    [int] $HitPoints
    Character() {
        $this.Strength = [Character]::Generate()
        $this.Dexterity = [Character]::Generate()
        $this.Constitution = [Character]::Generate()
        $this.Intelligence = [Character]::Generate()
        $this.Wisdom = [Character]::Generate()
        $this.Charisma = [Character]::Generate()
        $this.HitPoints = 10 + [Character]::GetModifier($this.Constitution)
    }
    static [int] Generate() {
        return (1..4 | ForEach-Object {(Get-Random -max 6) + 1} | Sort-Object -Descending | `
            Select-Object -First 3 | Measure-Object -Sum).Sum
    }
    [int] Ability() {
        return [Character]::Generate()
    }
    static [int] GetModifier([int]$Score) {
        return [Math]::Floor(($Score - 10) / 2)
    }

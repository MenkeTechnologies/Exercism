class Clock {
    [Int32] $hour = 0
    [Int32] $minute = 0
    Clock($h, $m) {
        $this.hour = (24 + (($h + [Math]::Floor($m / 60)) % 24)) % 24
        $this.minute = (60 + ($m % 60)) % 60
    }
    [string] ToString() {
        return "{0:d2}:{1:d2}" -f $this.hour, $this.minute
    }
    [bool] Equals($other) {
        return $other.hour -eq $this.hour -and $other.minute -eq $this.minute
    }
    [Clock] Add($m) {
        return [Clock]::new($this.hour, $this.minute + $m)
    }
}

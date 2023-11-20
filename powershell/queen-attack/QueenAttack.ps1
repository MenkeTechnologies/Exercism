Class ChessBoard {
    [int[]]$White
    [int[]]$Black

    ChessBoard() {
        $this.White = @(7,3)
        $this.Black = @(0,3)
    }

    ChessBoard([int[]]$WhitePos,[int[]]$BlackPos) {
         if ($WhitePos | ? {$_ -gt 7 -or $_ -lt 0 }) {
            Throw "White queen must be placed on the board"
        }
        if ($BlackPos | ? {$_ -gt 7 -or $_ -lt 0 }) {
            Throw "Black queen must be placed on the board"
        }
        if (-not (Compare-Object $WhitePos $BlackPos)) {
            Throw 'Queens can not share the same space'
        }
        $this.White = $WhitePos
        $this.Black = $BlackPos
    }

    [bool] CanAttack() {
        $dx = [Math]::Abs($this.White[0] - $this.Black[0])
        $dy = [Math]::Abs($this.White[1] - $this.Black[1])
        return $dx -eq 0 -or $dy -eq 0 -or $dx -eq $dy
    }

    [string] DrawBoard() {
        $empty_row = @('_') * 8
        $Board = @(0..7 | % {,$empty_row.Clone()})
        $Board[$this.White[0]][$this.White[1]] = 'W'
        $Board[$this.Black[0]][$this.Black[1]] = 'B'
        return ($Board | % {$_ -join " "}) -join "`r`n"
    }
}

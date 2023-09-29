Class HighScores {
    [int[]]$scores
    HighScores([int[]]$list){
        $this.scores = $list
    }
    [int[]] GetScores(){
        return $this.scores
    }
    [int[]] GetTopThree(){
        return $this.scores | Sort-Object -Descending | Select-Object -First 3
    }
    [int[]] GetLatest() {
        return $this.scores | select-object -Last 1
    }
    [int] GetPersonalBest(){
        return ($this.scores | Sort-Object -Descending)[0]
    }
}

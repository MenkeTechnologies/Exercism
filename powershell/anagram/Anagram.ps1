Function Invoke-Anagram($Subject, $Candidates) {
    $sortedTarget = ($Subject.ToLower().ToCharArray() | Sort-Object) -join ""
    $res = @()
    foreach ($Candidate in $Candidates) {
        $sortedCandidate = ($candidate.ToLower().ToCharArray() | Sort-Object) -join ""
        if ($sortedTarget -eq $sortedCandidate -and $Subject.ToLower() -ne $Candidate.ToLower()) {
            $res += $Candidate
        }
    }
    return $res
}

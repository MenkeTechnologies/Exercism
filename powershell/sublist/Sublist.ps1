Function Invoke-Sublist($Data1, $Data2) {

    $s1 = ($Data1 -join ",") + ","
    $s2 = ($Data2 -join ",") + ","

    if ($s1 -eq $s2) { [Sublist]::EQUAL }
    elseif ($s2.Contains($s1)) { [Sublist]::SUBLIST }
    elseif ($s1.Contains($s2)) { [Sublist]::SUPERLIST }
    else { [Sublist]::UNEQUAL }
}

enum Sublist {
    EQUAL
    SUBLIST
    SUPERLIST
    UNEQUAL
}

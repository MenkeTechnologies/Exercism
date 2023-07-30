Function Get-Slices($Series, $SliceLength) {
    if ($Series -eq "") { Throw "Series cannot be empty." }
    if ($SliceLength -gt $Series.Length) { Throw "Slice length cannot be greater than series length." }
    if ($SliceLength -eq 0) { Throw "Slice length cannot be zero." }
    if ($SliceLength -lt 0) { Throw "Slice length cannot be negative." }
    $slices = @()
    for ($i = 0; $i -le $Series.Length - $SliceLength; ++$i) {
        $slices += $Series.Substring($i, $SliceLength)
    }
    $slices
}

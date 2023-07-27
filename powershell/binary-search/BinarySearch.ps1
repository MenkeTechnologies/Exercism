Function Invoke-BinarySearch($Array, $Value) {
        $lo = 0
        $hi = $Array.Length - 1
        while ($lo -le $hi) {
            [int]$mid = ($lo + $hi) / 2
            if ($Value -lt $Array[$mid]) {
                $hi = $mid - 1
            } elseif ($Value -gt $Array[$mid]) {
                $lo = $mid + 1
            } else {
                 return $mid
            }
        }
        throw "error: value not in array"
}


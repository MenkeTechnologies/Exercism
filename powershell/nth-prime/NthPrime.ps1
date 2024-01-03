Function Prime($N){
    for ($i = 2; $i -le [Math]::floor([Math]::sqrt($N)); ++$i) {
        if ($N % $i -eq 0) {
            return $False
        }
    }
    $True
}

Function Get-NthPrime($Number){
    if ($Number -lt 1) {
        Throw "error: there is no zeroth prime"
    }
    $primes = @(2)
    $curr = 3
    while ($primes.Length -lt $Number) {
      if (Prime($curr)) {
        $primes += $curr
      }
      $curr += 2
    }
    $primes[-1]
}

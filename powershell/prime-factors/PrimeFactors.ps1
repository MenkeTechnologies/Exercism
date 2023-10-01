Function Invoke-PrimeFactors($Number) {
   $fac = @()
   $divisor = 2
    while ($Number -gt 1) {
      while ($Number % $divisor -eq 0) {
        $fac += $divisor
        $Number /= $divisor
      }
      ++$divisor
    }
    $fac
}


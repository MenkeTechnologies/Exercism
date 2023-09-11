Class Allergies {
  static [string[]]$AllergenNames = @(
    "eggs"
    "peanuts"
    "shellfish"
    "strawberries"
    "tomatoes"
    "chocolate"
    "pollen"
    "cats"
  )
  [uint] $mask = 0
  Allergies([uint]$alMask) {
    $this.mask = $alMask -band 0xff
  }
  [bool] IsAllergicTo($Name) {
    return [Allergies]::Allergens | ? Name -eq $Name | % { $_.Mask -band $this.mask }
  }
  [string[]] GetAllergies() {
    return [Allergies]::Allergens | ? {$_.Mask -band $this.mask} | % Name
  }
  static [psobject[]] $Allergens = ([Allergies]::AllergenNames |
    % { $x = 0 } { [pscustomobject]@{Name=$_;Mask=(1u -shl $x)}; $x += 1 }
  )
}

function Invoke-Keep($Data, $Predicate) {
    $Data | Where-Object {
      Invoke-Command -ScriptBlock $Predicate -ArgumentList (, $_)
    }
}
function Invoke-Discard($Data, $Predicate) {
    $Data | Where-Object {
      $_ -notin (Invoke-Command -ScriptBlock $Predicate -ArgumentList (, $_))
    }
}

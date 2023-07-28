Function Invoke-ArmstrongNumbers($Number)
{
    $s = $Number.ToString();
    $sum = 0;
    foreach($c in $s.ToCharArray())
    {
        $digit = [int]::Parse($c);
        $sum += [Math]::Pow($digit, $s.Length);
    }
    return $sum -eq $Number;
}

Function Get-ReverseString($Forward)
{
    $res = "";
    for($i = $Forward.Length; $i -ge 0; $i--)
    {
        $res += $Forward[$i];
    }
    return $res;
}

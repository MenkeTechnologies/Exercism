BEGIN { FPAT="\\w" }
{
    while (!dict[tolower($++i)]){ dict[tolower($i)]++; }
    print $i ? "false" : "true"
}

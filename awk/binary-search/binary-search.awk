BEGIN { FS = "," }

{
    lo = 1
    hi = NF
    while (lo <= hi) {
        mid = int((lo + hi) / 2)
        if (value == $mid) {
            print mid
            exit
        }
        if (value < $mid) hi = mid - 1
        else lo = mid + 1
    }
    print -1
}

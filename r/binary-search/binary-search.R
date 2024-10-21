find = function(ary, target) {
    lo = 1;
    hi = length(ary);

    while(lo <= hi) {
        mid = floor((lo + hi) / 2);
        if (target == ary[[mid]]) {
            return(mid);
        } else if (target < ary[[mid]]) {
            hi = mid - 1;
        } else {
            lo = mid + 1;
        }
    }
-1;

}

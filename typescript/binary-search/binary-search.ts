export const find = (ary: number[], target: number) => {
    let lo = 0;
    let hi = ary.length - 1;
    while (lo <= hi) {
        let mid = Math.floor((lo + hi) / 2);
        if (target === ary[mid]) {
            return mid;
        } else if (target < ary[mid]) {
            hi = mid - 1;
        } else if (target > ary[mid]) {
            lo = mid + 1;
        }
    }
    throw new Error('Value not in array');
};

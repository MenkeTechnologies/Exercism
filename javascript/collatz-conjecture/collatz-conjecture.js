export const steps = n => {
    if (n < 1) throw "Only positive numbers are allowed";
    let cnt = 0
    while (n > 1) {
        n = n % 2 === 0 ? n / 2 : (n * 3 + 1);
        ++cnt;
    }

    return cnt;
};
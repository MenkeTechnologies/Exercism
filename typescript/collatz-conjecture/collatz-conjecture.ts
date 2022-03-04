export const steps = (n: number): number => {

    if (n < 1) throw new Error("Only positive numbers are allowed");

    let cnt = 0;

    while (n > 1) {
        n = n % 2 === 0 ? n / 2 : 3 * n + 1;
        ++cnt;
    }

    return cnt;

};

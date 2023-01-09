export const convert = (digits: number[], inputBase: number, outputBase: number): number[] => {
    if (inputBase < 2 || !Number.isInteger(inputBase)) throw new Error('Wrong input base');
    if (outputBase < 2 || !Number.isInteger(outputBase)) throw new Error('Wrong output base');
    if (digits.length === 1 && digits[0] === 0) return [0];
    if (digits.length === 0 || digits[0] === 0) throw new Error('Input has wrong format');
    digits.forEach(d => { if (d < 0 || d >= inputBase) throw new Error('Input has wrong format'); });
    let num = digits.reduce((acc, n) => acc * inputBase + n, 0)

    const res = [];
    while (num) {
        res.unshift(num % outputBase);
        num = Math.floor(num / outputBase);
    }
    return res;
};

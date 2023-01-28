export const convert = (digits, inputBase, outputBase) => {
    if (inputBase < 2 || !Number.isInteger(inputBase)) throw new Error('Wrong input base');
    if (outputBase < 2 || !Number.isInteger(outputBase)) throw new Error('Wrong output base');
    if (digits.length === 1 && digits[0] === 0) return [0];
    if (digits.length === 0 || digits[0] === 0) throw new Error('Input has wrong format');
    digits.forEach(d => { if (d < 0 || d >= inputBase) throw new Error('Input has wrong format'); });
    let sum = digits.reduce((acc, n) => acc * inputBase + n, 0)
    const res = [];
    while (sum) {
        res.unshift(sum % outputBase);
        sum = Math.floor(sum / outputBase);
    }
    return res;
};

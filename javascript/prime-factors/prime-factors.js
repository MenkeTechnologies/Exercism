export const primeFactors = (start) => {

    let fac = []
    let divisor = 2

    while (start > 1) {
        while (start % divisor === 0) {
            fac.push(divisor);
            start /= divisor;
        }
        ++divisor;
    }

    return fac;


};
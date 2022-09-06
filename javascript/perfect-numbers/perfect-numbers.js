export const classify = (num) => {

    if (num <= 0) {
        throw new Error('Classification is only possible for natural numbers.')
    }

    let sum = [...Array(num - 1).keys()].map(x => x + 1).filter(n => num % n === 0).reduce((acc, n) => acc + n, 0)


    if (sum === num) {
        return 'perfect'
    }

    if (sum < num) {
        return 'deficient'
    }

    if (sum > num) {
        return 'abundant'
    }

};
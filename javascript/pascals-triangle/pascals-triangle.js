export const rows = (num) =>
    num < 1 ? [] : [...Array(num - 1).keys()].map(n => n + 1)
    .reduce((a, _) =>
        a.concat([
            [1].concat(a[a.length - 1].slice(0, -1).map((n, i) => n + a[a.length - 1][i + 1])).concat([1])
        ]), [
            [1]
        ])
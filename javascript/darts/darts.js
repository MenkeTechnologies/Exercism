export const score = (x, y) => {
    const d = Math.pow(Math.pow(x, 2) + Math.pow(y, 2), 0.5)
    return d <= 1 ? 10 : d <= 5 ? 5 : d <= 10 ? 1 : 0;
};
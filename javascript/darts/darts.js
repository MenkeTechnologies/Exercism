export const score = (x, y) => {
    const d = Math.hypot(x,y);
    return d > 10 ? 0 : d > 5 ? 1 : d > 1 ? 5 : 10;
};

export const compute = (left: string, right: string) => {
    if (left.length !== right.length) throw new Error("DNA strands must be of equal length.")

    return left.split('').map((c, i) => [c, right[i]])
        .filter(([l, r]) => l !== r).length
};

export const transform = (old: { [key: number]: string[] }) =>
    Object.entries(old).reduce((acc1, [n, letters]) =>
            ({...acc1, ...(letters.reduce((acc2, letter) => ({...acc2, [letter.toLowerCase()]: parseInt(n)}), {}))})
        , {});

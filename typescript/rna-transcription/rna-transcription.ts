const dict: {[k:string]:string} = { G: "C", C: "G", T: "A", A: "U"}

const getThrow = (c: string) => {
    const v = dict[c];
    if (!v) throw Error('Invalid input DNA.')
    return v;
}

export const toRna = (s: string) => s.split("").map(getThrow).join("")

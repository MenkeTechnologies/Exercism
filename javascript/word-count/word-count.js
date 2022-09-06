export const countWords = s =>
    s.toLowerCase().replace(/(?!\w|'t\b)./g, " ").trim().split(/\s+/).reduce((acc, w) => ({
        ...acc,
        [w]: (acc[w] || 0) + 1
    }), {});
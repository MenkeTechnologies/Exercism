const MAP = {
    3: "Pling",
    5: "Plang",
    7: "Plong"
}

export const convert = (n) =>
    Object.entries(MAP).filter(([k]) => n % parseInt(k) === 0).map(([_, v]) => v).join("") || n.toString();
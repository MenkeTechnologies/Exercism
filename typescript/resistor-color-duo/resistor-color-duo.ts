enum ResistorColors {
    black, brown, red, orange, yellow,
    green, blue, violet, grey, white
}

export const decodedValue = (colors: string[]) =>
    parseInt(colors.slice(0, 2).map(rc => ResistorColors[rc as keyof typeof ResistorColors]).join(""));

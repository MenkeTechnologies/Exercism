const PRICE = 800;
const discountPrices = [0, PRICE, PRICE * .95, PRICE * .9, PRICE * .8, PRICE * .75];

export const cost = (books) => {
    const len = books.length;
    if (!len) return 0;

    const groups = new Set(books).size;
    if (len % groups === 0) return len * discountPrices[groups];
    if (len % groups === 4) return (len - 4) * discountPrices[5] + 4 * discountPrices[4];
    if (len % groups === 2) return (len - 2) * discountPrices[groups] + 2 * discountPrices[2];

    if (len % 4 === 0) return len * discountPrices[4];
    if (len % 4 === 1) return (len - 5) * discountPrices[4] + 5 * discountPrices[5];
    if (len % 5 === 1) return (len - 1) * discountPrices[5] + discountPrices[1];

    return -1;
};

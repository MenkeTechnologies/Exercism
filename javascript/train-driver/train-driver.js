
/**
 * Return each wagon's id in form of an array.
 *
 * @param {number[]} ids
 * @returns {number[]} wagon ids
 */
export const getListOfWagons = (...ids) => ids;
/**
 * Reorder the array of wagons by moving the first 2 wagons to the end of the array.
 *
 * @param {number[]} ids
 * @returns {number[]} reorderd list of wagons
 */
export const fixListOfWagons = ([id1, id2, ...rest]) => [...rest, id1, id2];
/**
 * Fixes the array of wagons by inserting an array of wagons after the first element in eachWagonsID.
 *
 * @param {number[]} ids
 * @param {number[]} missingWagons
 * @returns {number[]} corrected list of wagons
 */
export const correctListOfWagons = ([id1, ...rest], missingWagons) => [id1, ...missingWagons, ...rest];
/**
 * Extend route information by adding another object
 *
 * @param {Record<string, string>} information
 * @param {Record<string, string>} additional
 * @returns {Record<string, string>} extended route information
 */
export const extendRouteInformation = (information, additional) => ({ ...information, ...additional })
/**
 * Separate arrival time from the route information object
 *
 * @param {Record<string, string>} information
 * @returns {[string, Record<string, string>]} array with arrival time and object without arrival time
 */
export const separateTimeOfArrival = ({ timeOfArrival, ...information }) => [timeOfArrival, information];

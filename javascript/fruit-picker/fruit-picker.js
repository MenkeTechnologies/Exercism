/// <reference path="./global.d.ts" />
//
// @ts-check
//
// The lines above enable type checking for this file. Various IDEs interpret
// the @ts-check and reference directives. Together, they give you helpful
// autocompletion when implementing this exercise. You don't need to understand
// them in order to use it.
//
// In your own projects, files, and code, you can play with @ts-check as well.

import {
    checkStatus,
    checkInventory
} from './grocer';

/**
 * Returns the service status as a boolean value
 * @return {boolean}
 */
export const isServiceOnline = () => checkStatus(x => x === 'ONLINE')

/**
 * Pick a fruit using the checkInventory API
 *
 * @param {string} variety
 * @param {number} quantity
 * @param {InventoryCallback} callback
 * @return {AvailabilityAction} the result from checkInventory
 */
export const pickFruit = (variety, quantity, callback) =>
    checkInventory({
        variety,
        quantity
    }, callback)

/**
 * This is a callback function to be passed to the checkInventory API
 * handles the next step once the inventory is known
 * @param {string | null} err
 * @param {boolean | undefined} isAvailable
 * @return {AvailabilityAction} whether the fruit was purchased 'PURCHASE' or 'NOOP'
 */
export const purchaseInventoryIfAvailable = (err, isAvailable) => {
    if (err) {
        throw new Error();
    }

    return isAvailable ? 'PURCHASE' : 'NOOP';
};

/**
 * Pick a fruit, and if it is available, purchase it
 *
 * @param {string} variety
 * @param {number} quantity
 * @return {AvailabilityAction} whether the fruit was purchased 'PURCHASE' or 'NOOP'
 */
export const pickAndPurchaseFruit = (variety, quantity) =>
    pickFruit(variety, quantity, purchaseInventoryIfAvailable)
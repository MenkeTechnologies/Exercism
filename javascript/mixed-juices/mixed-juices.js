// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

const PREP_TIME = {
  'Pure Strawberry Joy': 0.5,
  'Energizer': 1.5,
  'Green Garden': 1.5,
  'Tropical Island': 3,
  'All or Nothing': 5
}

const WEDGES = {
  'small': 6,
  'medium': 8,
  'large': 10
}


/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export const timeToMixJuice = name =>
  PREP_TIME[name] || 2.5

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export const limesToCut = (wedgesNeeded, limes) =>
  limes.map(l => WEDGES[l]).reduce((acc, n) => {
    if (wedgesNeeded <= 0) return acc
    wedgesNeeded -= n
    return acc + 1
  }, 0)


/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export const remainingOrders = (timeLeft, orders) => {
  while (timeLeft > 0){
    timeLeft -= timeToMixJuice(orders.shift());
  }

  return orders;

};

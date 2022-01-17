/**
 * The day rate, given a rate per hour
 *
 * @param {number} ratePerHour
 * @returns {number} the rate per day
 */
export const dayRate = (ratePerHour) => ratePerHour * 8

/**
 * Calculates the number of days in a budget, rounded down
 *
 * @param {number} budget: the total budget
 * @param {number} ratePerHour: the rate per hour
 * @returns {number} the number of days
 */
export const daysInBudget = (budget, ratePerHour) =>
  Math.floor(budget / dayRate(ratePerHour))

/**
 * Calculates the discounted rate for large projects, rounded up
 *
 * @param {number} ratePerHour
 * @param {number} numDays: number of days the project spans
 * @param {number} discount: for example 20% written as 0.2
 * @returns {number} the rounded up discounted rate
 */
export const priceWithMonthlyDiscount = (ratePerHour, numDays, discount) => {

  let discountDays = Math.floor(numDays / 22) * 22;
  let fullDays = numDays - discountDays
  let rate = dayRate(ratePerHour);
  let disc = 1 - discount;
  return Math.ceil(rate * discountDays * disc + rate * fullDays)
}

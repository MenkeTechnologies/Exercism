// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export const totalBirdCount = birdsPerDay =>
  birdsPerDay.reduce((acc, n) => acc + n)

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export const birdsInWeek = (birdsPerDay, week) =>
  birdsPerDay.splice((week - 1) * 7, 7).reduce((acc,n) => acc + n)

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export const fixBirdCountLog = birdsPerDay => {
  birdsPerDay.forEach((n,i) =>  i % 2 === 0 ? birdsPerDay[i] = n + 1 : null )
  return birdsPerDay
  }

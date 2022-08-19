//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.
/**
 * Removes duplicate tracks from a playlist.
 *
 * @param {string[]} playlist
 * @returns {string[]} new playlist with unique entries
 */
export const removeDuplicates = playlist => [...new Set(playlist)];

/**
 * Checks whether a playlist includes a track.
 *
 * @param {string[]} playlist
 * @param {string} track
 * @returns {boolean} whether the track is in the playlist
 */
export const hasTrack = (playlist, track) => new Set(playlist).has(track);

/**
 * Adds a track to a playlist.
 *
 * @param {string[]} playlist
 * @param {string} track
 * @returns {string[]} new playlist
 */
export const addTrack = (playlist, track) => {
  const set = new Set(playlist)
  set.add(track)
  return [...set]
};

/**
 * Deletes a track from a playlist.
 *
 * @param {string[]} playlist
 * @param {string} track
 * @returns {string[]} new playlist
 */
export const deleteTrack = (playlist, track) => {
  const set = new Set(playlist)
  set.delete(track)
  return [...set]
};

/**
 * Lists the unique artists in a playlist.
 *
 * @param {string[]} playlist
 * @returns {string[]} list of artists
 */
export const listArtists = playlist => [...new Set(playlist.map(track => track.split(' - ')[1]))];

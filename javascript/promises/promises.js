export const promisify = f => (...args) =>
  new Promise((resolve, reject) =>
    f(...args, (err, result) => err ? reject(err) : resolve(result)));

export const all = promises => promises ?
  promises.reduce(
    async (acc, promise) => (await acc).concat(await promise), Promise.resolve([])) : Promise.resolve();
export const allSettled = promises => promises ? promises.reduce(
  async (acc, promise) => (await acc).concat(await promise.catch(err => err)),
  Promise.resolve([])
) : Promise.resolve();
export const race = promises => promises ?
  new Promise((resolve, reject) => promises.length
    ? promises.forEach(promise => promise.then(resolve, reject))
    : resolve([]))
  : Promise.resolve()
export const any = promises => promises ?
  new Promise((resolve, reject) => {
    promises.length
      ? promises.forEach(promise => promise.then(resolve).catch(() => null))
      : resolve([]);
    allSettled(promises).then(reject);
  }) : Promise.resolve()

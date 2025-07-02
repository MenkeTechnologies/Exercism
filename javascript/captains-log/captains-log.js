const PLANET_CLASSES = "DHJKLMNRTY";
export const randomShipRegistryNumber = () => `NCC-${Math.floor(1000 + 9000 * Math.random())}`;
export const randomStardate = () => 41000 + 1000 * Math.random();
export const randomPlanetClass = () => PLANET_CLASSES[Math.floor(Math.random() * PLANET_CLASSES.length)];

const SECS_PER_YEAR = 31557600;

enum PlanetaryPeriod {
    Earth = 1,
    Mercury = 0.2408467,
    Venus = 0.61519726,
    Mars = 1.8808158,
    Jupiter = 11.862615,
    Saturn = 29.447498,
    Uranus = 84.016846,
    Neptune = 164.79132,
}

class SpaceAge {

    seconds: number;

    constructor(secs: number) {
        this.seconds = secs;
    }


    private extracted(planetaryPeriod: PlanetaryPeriod): number {
        return parseFloat((this.seconds / SECS_PER_YEAR / planetaryPeriod).toFixed(2));
    }

    onEarth() {
        return this.extracted(PlanetaryPeriod.Earth);
    }


    onMercury() {
        return this.extracted(PlanetaryPeriod.Mercury);
    }

    onVenus() {
        return this.extracted(PlanetaryPeriod.Venus);
    }

    onMars() {
        return this.extracted(PlanetaryPeriod.Mars);
    }

    onJupiter() {
        return this.extracted(PlanetaryPeriod.Jupiter);
    }

    onSaturn() {
        return this.extracted(PlanetaryPeriod.Saturn);
    }

    onUranus() {
        return this.extracted(PlanetaryPeriod.Uranus);
    }

    onNeptune() {
        return this.extracted(PlanetaryPeriod.Neptune);
    }
}

export default SpaceAge;

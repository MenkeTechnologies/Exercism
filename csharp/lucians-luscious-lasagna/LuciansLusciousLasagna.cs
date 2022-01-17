class Lasagna
{
    public int ExpectedMinutesInOven() => 40;

    public int RemainingMinutesInOven(int elapsed) => ExpectedMinutesInOven() - elapsed;

    public int PreparationTimeInMinutes(int layers) => layers * 2;

    public int ElapsedTimeInMinutes(int layers, int elapsed) => PreparationTimeInMinutes(layers) + elapsed;
}

using System;

class RemoteControlCar
{
    private int distInc;
    private int drainInc;
    private int charge = 100;
    private int drivenDistance = 0;


    public RemoteControlCar(int distInc, int drainInc)
    {
        this.distInc = distInc;
        this.drainInc = drainInc;
    }

    public bool BatteryDrained() => charge < drainInc;

    public int DistanceDriven() => drivenDistance;

    public void Drive()
    {
        if (!BatteryDrained())
        {
            drivenDistance += distInc;
            charge -= drainInc;
        }
    }

    public static RemoteControlCar Nitro() => new RemoteControlCar(50, 4);

    public int DistanceLeft() => charge / drainInc * distInc;
}

class RaceTrack
{
    private int distance;

    public RaceTrack(int distance)
    {
        this.distance = distance;
    }

    public bool TryFinishTrack(RemoteControlCar car)
    {
        return distance <= car.DistanceLeft();

    }
}

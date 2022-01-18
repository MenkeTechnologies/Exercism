using System;

class RemoteControlCar
{
    private int distance;
    private int battery = 100;

    public static RemoteControlCar Buy() => new();

    public string DistanceDisplay() => $"Driven {distance} meters";

    public string BatteryDisplay() => battery > 0 ? $"Battery at {battery}%" : "Battery empty";

    public void Drive()
    {
        if (battery <= 0) return;
        distance += 20;
        battery -= 1;
    }
}

using System;

public class RemoteControlCar
{
    private int batteryPercentage = 100;
    private int distanceDrivenInMeters = 0;
    private string[] sponsors = [];
    private int latestSerialNum = 0;

    public void Drive()
    {
        if (batteryPercentage <= 0) return;
        batteryPercentage -= 10;
        distanceDrivenInMeters += 2;
    }

    public void SetSponsors(params string[] sponsors) => this.sponsors = sponsors;
    public string DisplaySponsor(int sponsorNum) => sponsors[sponsorNum];

    public bool GetTelemetryData(ref int serialNum, out int batteryPercentage, out int distanceDrivenInMeters)
    {
        if (serialNum < latestSerialNum)
        {
            serialNum = latestSerialNum;
            batteryPercentage = -1;
            distanceDrivenInMeters = -1;
            return false;
        }

        latestSerialNum = serialNum;
        batteryPercentage = this.batteryPercentage;
        distanceDrivenInMeters = this.distanceDrivenInMeters;
        return true;
    }

    public static RemoteControlCar Buy() => new RemoteControlCar();
}

public class TelemetryClient(RemoteControlCar car)
{
    public string GetBatteryUsagePerMeter(int serialNum)
    {
        if (car.GetTelemetryData(ref serialNum, out var battPercent, out var distDriven) && distDriven > 0)
        {
            return "usage-per-meter=" + (100 - battPercent) / distDriven;
        }

        return "no data";
    }
}

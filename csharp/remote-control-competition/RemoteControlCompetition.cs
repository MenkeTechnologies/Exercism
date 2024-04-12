using System;
using System.Collections.Generic;
using System.Linq;

public interface IRemoteControlCar
{
    int DistanceTravelled { get; }
    void Drive();
}

public class ProductionRemoteControlCar : IRemoteControlCar, IComparable<ProductionRemoteControlCar>
{
    public int DistanceTravelled { get; private set; }
    public int NumberOfVictories { get; set; }
    public void Drive() => DistanceTravelled += 10;
    public int CompareTo(ProductionRemoteControlCar other) => NumberOfVictories.CompareTo(other.NumberOfVictories);
}

public class ExperimentalRemoteControlCar : IRemoteControlCar
{
    public int DistanceTravelled { get; private set; }
    public void Drive() => DistanceTravelled += 20;
}

public static class TestTrack
{
    public static void Race(IRemoteControlCar car) => car.Drive();

    public static List<ProductionRemoteControlCar> GetRankedCars(ProductionRemoteControlCar lhs,
        ProductionRemoteControlCar rhs) =>
        new List<ProductionRemoteControlCar> { lhs, rhs }.OrderBy(car => car).ToList();
}

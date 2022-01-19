using System.Collections.Generic;
using System.Linq;

class BirdCount
{
    private List<int> birdsPerDay;

    public BirdCount(IEnumerable<int> birdsPerDay) => this.birdsPerDay = birdsPerDay.ToList();

    public static int[] LastWeek() => new[]{ 0, 2, 5, 3, 7, 8, 4 };

    public int Today() => birdsPerDay.Last();

    public void IncrementTodaysCount() => ++birdsPerDay[^1];

    public bool HasDayWithoutBirds() => birdsPerDay.Any(d => d == 0);

    public int CountForFirstDays(int numberOfDays) => birdsPerDay.Take(numberOfDays).Sum();

    public int BusyDays() => birdsPerDay.FindAll(d => d > 4).Count();
}

using System;
using System.Collections.Generic;
using System.Linq;

public enum Plant
{
    Violets = 'V',
    Radishes = 'R',
    Clover = 'C',
    Grass = 'G'
}

public class KindergartenGarden
{
    private readonly string diagram;

    private readonly List<string> studentsName = new List<string>()
    {
        "Alice", "Bob", "Charlie", "David",
        "Eve", "Fred", "Ginny", "Harriet",
        "Ileana", "Joseph", "Kincaid", "Larry"
    };

    public KindergartenGarden(string diagram)
    {
        this.diagram = diagram;
    }

    public IEnumerable<Plant> Plants(string student)
    {
        int index = studentsName.IndexOf(student) * 2;
        return from line in diagram.Split('\n')
            from idx in Enumerable.Range(index, 2)
            select (Plant)line[idx];
    }
}

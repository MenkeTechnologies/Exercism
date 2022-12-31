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
    private readonly string _diagram;

    private readonly List<string> _studentsName = new()
    {
        "Alice", "Bob", "Charlie", "David",
        "Eve", "Fred", "Ginny", "Harriet",
        "Ileana", "Joseph", "Kincaid", "Larry"
    };

    public KindergartenGarden(string diagram) => _diagram = diagram;

    public IEnumerable<Plant> Plants(string student)
    {
        var index = _studentsName.IndexOf(student) * 2;
        var range = Enumerable.Range(index, 2);
        return _diagram.Split('\n').SelectMany(s => range.Select(i => s[i]).Select(c => (Plant)c));
    }
}

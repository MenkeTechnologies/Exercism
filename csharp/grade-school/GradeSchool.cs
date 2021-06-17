using System.Collections.Generic;
using System.Collections.Immutable;

public class GradeSchool
{
    private IDictionary<int, List<string>> map = new Dictionary<int, List<string>>();

    public void Add(string student, int grade)
    {
        if (!map.ContainsKey(grade))
        {
            map[grade] = new List<string>();
            map[grade].Add(student);
        }
        else
        {
            map[grade].Add(student);
        }
    }

    public IEnumerable<string> Roster()
    {
        List<string> list = new List<string>();
        var immutableSortedSet = map.Keys.ToImmutableSortedSet();

        foreach (var i in immutableSortedSet)
        {
            map[i].Sort();
            list.AddRange(map[i]);
        }

        return list;
    }

    public IEnumerable<string> Grade(int grade)
    {
        if (!map.ContainsKey(grade))
        {
            return new List<string>();
        }
        else
        {
            map[grade].Sort();
            return map[grade];
        }
    }
}
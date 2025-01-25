using System.Linq;

public class CustomSet(params int[] values)
{
    private readonly int[] _values = values.Distinct().ToArray();

    public CustomSet Add(int value) =>
        !Contains(value) ? new(_values.Append(value).ToArray()) : new (_values);

    public bool Empty() => _values.Length == 0;
    public bool Contains(int value) => _values.Contains(value);
    public bool Subset(CustomSet right) => _values.All(right.Contains);
    public bool Disjoint(CustomSet right) => _values.All(x => !right.Contains(x));
    public CustomSet Intersection(CustomSet right) => new(_values.Where(right.Contains).ToArray());
    public CustomSet Difference(CustomSet right) => new(_values.Where(x => !right.Contains(x)).ToArray());
    public CustomSet Union(CustomSet right) => new(_values.Union(right._values).ToArray());
    public override bool Equals(object obj) => obj is CustomSet set && Equals(set);
    public bool Equals(CustomSet right) => _values.All(right.Contains) && right._values.All(Contains);
    public override int GetHashCode() => _values.GetHashCode();
}

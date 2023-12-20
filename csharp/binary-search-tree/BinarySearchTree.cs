using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class BinarySearchTree : IEnumerable<int>
{
    public int Value { get; }
    public BinarySearchTree Left { get; private set; }
    public BinarySearchTree Right { get; private set; }

    public BinarySearchTree(int value) => Value = value;

    public BinarySearchTree(IEnumerable<int> values)
    {
        Value = values.First();
        foreach (var value in values.Skip(1)) Add(value);
    }

    private BinarySearchTree Add(int value)
    {
        if (value <= Value) Left = Left?.Add(value) ?? new BinarySearchTree(value);
        else Right = Right?.Add(value) ?? new BinarySearchTree(value);

        return this;
    }

    public IEnumerator<int> GetEnumerator()
    {
        foreach (var n in Left?.AsEnumerable() ?? Enumerable.Empty<int>()) yield return n;
        yield return Value;
        foreach (var n in Right?.AsEnumerable() ?? Enumerable.Empty<int>()) yield return n;
    }

    IEnumerator IEnumerable.GetEnumerator() => this.GetEnumerator();
}

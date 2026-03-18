using System;
using Xunit;

public class SatelliteTests
{
 [Fact]
    public void Empty_tree()
    {
        Assert.Null(Satellite.TreeFromTraversals([], []));
    }

 [Fact]
    public void Tree_with_one_item()
    {
        var expected = new Tree('a', null, null);
        Assert.Equal(expected, Satellite.TreeFromTraversals(['a'], ['a']));
    }

 [Fact]
    public void Tree_with_many_items()
    {
        var expected = new Tree('a', new Tree('i', null, null), new Tree('x', new Tree('f', null, null), new Tree('r', null, null)));
        Assert.Equal(expected, Satellite.TreeFromTraversals(['a', 'i', 'x', 'f', 'r'], ['i', 'a', 'f', 'x', 'r']));
    }

 [Fact]
    public void Reject_traversals_of_different_length()
    {
        Assert.Throws<ArgumentException>(() => Satellite.TreeFromTraversals(['a', 'b'], ['b', 'a', 'r']));
    }

 [Fact]
    public void Reject_inconsistent_traversals_of_same_length()
    {
        Assert.Throws<ArgumentException>(() => Satellite.TreeFromTraversals(['x', 'y', 'z'], ['a', 'b', 'c']));
    }

 [Fact]
    public void Reject_traversals_with_repeated_items()
    {
        Assert.Throws<ArgumentException>(() => Satellite.TreeFromTraversals(['a', 'b', 'a'], ['b', 'a', 'a']));
    }
}

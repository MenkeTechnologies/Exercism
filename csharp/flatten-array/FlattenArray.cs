using System.Collections;
using System.Collections.Generic;
using System.Linq;

public static class FlattenArray
{
    public static IEnumerable Flatten(IEnumerable input) =>
        input.Cast<object>().Where(x => x != null)
            .Select(x => x is IEnumerable<object>
                ? Flatten(x as IEnumerable<object>)
                : new[] { x })
            .SelectMany(n => n.Cast<object>());
}

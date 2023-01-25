public class Deque<T>
{
    private Node _first;
    private Node _last;

    public void Push(T value)
    {
        var previousLast = _last;
        _last = new Node { Value = value, Prev = previousLast };
        _first ??= _last;

        if (previousLast != null)
        {
            previousLast.Next = _last;
        }
    }

    public T Pop()
    {
        var value = _last.Value;
        _last = _last.Prev;
        return value;
    }

    public T Shift()
    {
        var value = _first.Value;
        _first = _first.Next;
        return value;
    }

    public void Unshift(T value)
    {
        var previousFirst = _first;
        _first = new Node { Value = value, Next = previousFirst };
        _last ??= _first;
        if (previousFirst != null)
        {
            previousFirst.Prev = _first;
        }
    }

    private class Node
    {
        public T Value { get; init; }
        public Node Next { get; set; }
        public Node Prev { get; set; }
    }
}

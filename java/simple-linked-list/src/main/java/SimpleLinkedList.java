import java.lang.reflect.Array;
import java.util.Optional;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class SimpleLinkedList<T> {
    private Cons<T> list = Cons.empty();
    private int size = 0;

    public SimpleLinkedList(T[] values) {
        revRange(0, values.length)
                .mapToObj(i -> values[i])
                .forEach(this::push);
    }

    public SimpleLinkedList() {
    }

    public int size() {
        return size;
    }

    public void push(T t) {
        list = list.cons(t);
        ++size;
    }

    public T pop() {
        Optional<T> result = list.head;
        list = list.tail.get();
        --size;
        return result.get();
    }

    public void reverse() {
        Stream<T> values = list.stream();
        list = Cons.empty();
        values.forEach(this::push);
    }

    @SuppressWarnings("unchecked")
    public <U> U[] asArray(Class<U> arrayType) {
        return list.stream().toArray(size -> (U[]) Array.newInstance(arrayType, size));
    }

    private static class Cons<T> {
        Optional<T> head = Optional.empty();
        Optional<Cons<T>> tail = Optional.empty();

        private Cons() {
        }

        Cons<T> cons(T t) {
            Cons<T> result = empty();
            result.head = Optional.of(t);
            result.tail = Optional.of(this);
            return result;
        }

        Stream<T> stream() {
            if (head.isPresent()) {
                Stream<T> headStream = Stream.of(head.get());
                Stream<T> tailStream = tail.isPresent() ? tail.get().stream() : Stream.empty();
                return Stream.concat(headStream, tailStream);
            } else {
                return Stream.empty();
            }
        }

        static <T> Cons<T> empty() {
            return new Cons<T>();
        }
    }

    private static IntStream revRange(int from, int to) {
        return IntStream.range(from, to)
                .map(i -> to - i + from - 1);
    }
}

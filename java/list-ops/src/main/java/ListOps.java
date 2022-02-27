import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;

class ListOps {
    static <T> List<T> append(List<T> list1, List<T> list2) {
        List<T> r = new ArrayList<>(list1);
        r.addAll(list2);
        return r;
    }

    static <T> List<T> concat(List<List<T>> listOfLists) {
        List<T> r = new ArrayList<>();
        listOfLists.forEach(r::addAll);
        return r;
    }

    static <T> List<T> filter(List<T> list, Predicate<T> predicate) {
        return list.stream().reduce(new ArrayList<>(), (acc, n) -> {
            if (predicate.test(n)) acc.add(n);
            return acc;
        }, (acc, acc2) -> {
            acc.addAll(acc2);
            return acc;
        });
    }

    static <T> int size(List<T> list) {
        return list.size();
    }

    static <T, U> List<U> map(List<T> list, Function<T, U> transform) {
        return list.stream().reduce(new ArrayList<>(), (acc, n) -> {
            acc.add(transform.apply(n));
            return acc;
        }, (acc, acc2) -> {
            acc.addAll(acc2);
            return acc;
        });
    }

    static <T> List<T> reverse(List<T> list) {
        List<T> r = new ArrayList<>();
        for (int i = list.size() - 1; i >= 0; --i) {
            r.add(list.get(i));
        }
        return r;
    }

    static <T, U> U foldLeft(List<T> list, U initial, BiFunction<U, T, U> f) {
        for (T t : list) {
            initial = f.apply(initial, t);
        }

        return initial;
    }

    static <T, U> U foldRight(List<T> list, U initial, BiFunction<T, U, U> f) {
        for (T t : reverse(list)) {
            initial = f.apply(t, initial);
        }

        return initial;
    }

    private ListOps() {
    }
}

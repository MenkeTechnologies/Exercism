import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class CustomSet<T> {
    private List<T> lst;

    public CustomSet(List<T> lst) {
        this.lst = new ArrayList<>();
        this.lst.addAll(lst);
    }

    public void add(T element) {
        if (!contains(element)) {
            lst.add(element);
        }
    }

    public boolean isEmpty() {
        return lst.size() == 0;
    }

    public boolean contains(T element) {
        return lst.contains(element);
    }

    public boolean isSubset(CustomSet<T> customSet) {
        return customSet.lst.parallelStream().allMatch(el -> lst.contains(el));
    }

    public boolean isDisjoint(CustomSet<T> customSet) {
        return customSet.lst.parallelStream().noneMatch(el -> lst.contains(el));
    }

    public CustomSet<T> getIntersection(CustomSet<T> customSet) {
        return new CustomSet<>(customSet.lst.parallelStream()
                .filter(el -> lst.contains(el)).collect(Collectors.toList()));
    }

    public CustomSet<T> getDifference(CustomSet<T> customSet) {
        return new CustomSet<>(lst.parallelStream().filter(el -> !customSet.contains(el)).collect(Collectors.toList()));
    }

    public CustomSet<T> getUnion(CustomSet<T> customSet) {
        CustomSet<T> customSet1 = new CustomSet<>(customSet.lst.parallelStream()
                .filter(el -> !lst.contains(el)).collect(Collectors.toList()));
        customSet1.lst.addAll(lst);
        return customSet1;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass() || o.getClass() != CustomSet.class) {
            return false;
        }
        CustomSet<T> customSet = (CustomSet<T>) o;
        return isSubset(customSet) && customSet.isSubset(this);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lst);
    }
}

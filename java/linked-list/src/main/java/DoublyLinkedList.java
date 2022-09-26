import java.util.ArrayList;
import java.util.List;

public class DoublyLinkedList<Object> {
    private List<Object> lst = new ArrayList<>();

    public void push(Object i) {
        lst.add(i);
    }

    public Object pop() {
        return lst.remove(lst.size() - 1);
    }

    public Object shift() {
        return lst.remove(0);
    }

    public void unshift(Object c) {
        lst.add(0, c);
    }
}

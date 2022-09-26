import java.util.ArrayList;
import java.util.List;

public class DoublyLinkedList<Object> {
    private List<Object> doubleLinkedList = new ArrayList<>();

    public void push(Object i) {
        doubleLinkedList.add(i);
    }

    public Object pop() {
        return doubleLinkedList.remove(doubleLinkedList.size() - 1);
    }

    public Object shift() {
        return doubleLinkedList.remove(0);
    }

    public void unshift(Object c) {
        doubleLinkedList.add(0, c);
    }
}

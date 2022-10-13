import java.util.Collections;
import java.util.List;

class RelationshipComputer<T> {
    public Relationship computeRelationship(List<T> ListA, List<T> ListB) {
        if (ListA.size() > ListB.size() && Collections.indexOfSubList(ListA, ListB) != -1)
            return Relationship.SUPERLIST;
        else if (ListA.size() < ListB.size() && Collections.indexOfSubList(ListB, ListA) != -1)
            return Relationship.SUBLIST;
        else if (Collections.indexOfSubList(ListA, ListB) != -1)
            return Relationship.EQUAL;
        return Relationship.UNEQUAL;
    }
}

import java.util.List;
import java.util.Arrays;
public class BinarySearch {
    private List<Integer> lst;
    public BinarySearch(List<Integer> lst){
        this.lst = lst;
    }
    public int indexOf(int pos) throws ValueNotFoundException{
        int first = 0;
        int last = lst.size()-1;
        int mid = (first + last) /2;

        while(first <= last){
            if(pos == lst.get(mid)){
                return mid;
            } else if(pos > lst.get(mid)){
                first = mid + 1;
            } else{
                last = mid - 1;
            }
            mid = (first + last) /2;
        }
        throw new ValueNotFoundException("Value not in array");
    }
}

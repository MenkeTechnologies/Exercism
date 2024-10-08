import java.util.List;
import java.util.Arrays;
public class BinarySearch {
    private List<Integer> lst;
    public BinarySearch(List<Integer> lst){
        this.lst = lst;
    }
    public int indexOf(int target) throws ValueNotFoundException{
        int lo = 0;
        int hi = lst.size()-1;

        int mid;
        while(lo <= hi){
            mid = (lo + hi) /2;
            if(target == lst.get(mid)){
                return mid;
            } else if(target > lst.get(mid)){
                lo = mid + 1;
            } else{
                hi = mid - 1;
            }
        }
        throw new ValueNotFoundException("Value not in array");
    }
}

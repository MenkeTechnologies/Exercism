public class PopCount {
    public int eggCount(int number) {
        return (int) Integer.toBinaryString(number).chars().filter(c -> c == '1').count();
    }
}

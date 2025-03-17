import java.util.Map;
import java.util.HashMap;

public class DialingCodes {
    private Map<Integer, String> dict = new HashMap<>();

    public Map<Integer, String> getCodes() {
        return dict;
    }
    public void setDialingCode(Integer code, String country) {
        dict.put(code, country);
    }
    public String getCountry(Integer code) {
        return dict.getOrDefault(code, "No country found with this code");
    }
    public void addNewDialingCode(Integer code, String country) {
        if(!dict.containsKey(code) && !dict.containsValue(country))
            setDialingCode(code, country);
    }
    public Integer findDialingCode(String country) {
        return dict.entrySet().stream().filter(a -> a.getValue().equals(country)).map(Map.Entry::getKey).findFirst().orElse(null);
    }
    public void updateCountryDialingCode(Integer code, String country) {
        Integer oldKey = findDialingCode(country);
        if(oldKey != null){
            dict.remove(oldKey);
            dict.put(code, country);
        }
    }
}

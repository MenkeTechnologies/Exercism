import java.util.HashMap;
import java.util.Stack;

class BracketChecker {
    private static final HashMap<Character, Character> pairs =
            new HashMap<>() {{
                put('(', ')');
                put('{', '}');
                put('[', ']');
            }};
    private final String s;

    BracketChecker(String text) {
        s = text;
    }

    boolean areBracketsMatchedAndNestedCorrectly() {
        Stack<Character> stack = new Stack<>();
        for (char c : s.toCharArray()) {
            if (pairs.containsKey(c)) {
                stack.push(c);
            } else if (pairs.containsValue(c) && (stack.isEmpty() || pairs.get(stack.pop()) != c)) {
                return false;
            }
        }
        return stack.empty();
    }
}

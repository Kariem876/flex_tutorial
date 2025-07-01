import java.util.HashMap;
import java.util.Map;
public class Environment {
    private final Map<String, Integer> variables = new HashMap<>();

    public void set(String var, int value) {
        variables.put(var, value);
    }

    public int get(String var) {
        if (!variables.containsKey(var)) throw new RuntimeException("Undefined variable: " + var);
        return variables.get(var);
    }
}

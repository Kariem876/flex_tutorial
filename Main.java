import java.io.*;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws Exception {
        parser p = new parser(new Lexer(new InputStreamReader(System.in)));
        p.parse();
    }
}

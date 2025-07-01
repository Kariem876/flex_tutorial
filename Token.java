public class Token {
    public enum Type {
        NUMBER, IDENTIFIER, PLUS, MINUS, MUL, DIV,
        ASSIGN, IF, ELSE, WHILE, FOR, PRINT, BEGIN, END,
        LPAREN, RPAREN, EOF
    }

    public final Type type;
    public final String value;

    public Token(Type type, String value) {
        this.type = type;
        this.value = value;
    }

    public String toString() {
        return type + "(" + value + ")";
    }
}

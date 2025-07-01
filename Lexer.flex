%%
%public
%class Lexer
%unicode
%cup

%{
//port java.io.*;
//port java_cup.runtime.Symbol;
%}
%%

[ \t\r\n]+                         {/* skip whitespace */}
"let"                              { return new Symbol(sym.IDENTIFIER, "let"); }
"if"                               { return new Symbol(sym.IF, "if"); }
"else"                             { return new Symbol(sym.ELSE, "else"); }
"while"                            { return new Symbol(sym.WHILE, "while"); }
"for"                              { return new Symbol(sym.FOR, "for"); }
"print"                            { return new Symbol(sym.PRINT, "print"); }
"begin"                            { return new Symbol(sym.BEGIN, "begin"); }
"end"                              { return new Symbol(sym.END, "end"); }

"+"                                { return new Symbol(sym.PLUS, "+"); }
"-"                                { return new Symbol(sym.MINUS, "-"); }
"*"                                { return new Symbol(sym.MUL, "*"); }
"/"                                { return new Symbol(sym.DIV, "/"); }
"="                                { return new Symbol(sym.ASSIGN, "="); }
"("                                { return new Symbol(sym.LPAREN, "("); }
")"                                { return new Symbol(sym.RPAREN, ")"); }

[0-9]+                             { return new Symbol(sym.NUMBER, yytext()); }
[a-zA-Z_][a-zA-Z_0-9]*             { return new Symbol(sym.IDENTIFIER, yytext()); }

.                                  { throw new Error("Unexpected character: " + yytext()); }

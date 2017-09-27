/* 15min.lex */
/* Lexer for a compiler that takes 15 minutes to write. */

/* Build instructions

    java -jar JLex.jar 15min.lex
    mv 15min.lex.java Yylex.java
    
*/


package parser15min;

import java_cup.runtime.Symbol;
%%
%cup

%eofval{
  return new Symbol(sym.EOF, null);
%eofval}

%%
"Circle" { return new Symbol(sym.CIRCLE); }
[ \t\r\n\f] { /* ignore white space. */ }
. { System.err.println("Illegal character: "+yytext()); }

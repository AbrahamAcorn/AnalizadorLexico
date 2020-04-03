package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z]+
F=[_A-Z]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
int |
double |
byte |
print |
false |
true |
and |
func |
class |
return |
break |
switch |
if |
else |
string |
while {lexeme=yytext(); return PalabraReservada;}
{espacio} {/*Ignore*/}
"#".* {/*Ignore*/}
"=" {return Asignacion;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
{F}({L}|{D})* {lexeme=yytext(); return Clase;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}

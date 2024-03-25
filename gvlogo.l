%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);
%}

%%

penup		{ return PENUP; }
pendown		{ return PENDOWN; }
print		{ return PRINT; }
color		{ return COLOR; }
clear		{ return CLEAR; }
turn		{ return TURN; }
move		{ return MOVE; }
end 		{ return END; }
save		{ return SAVE; }
goto		{ return GOTO; }
where		{ return WHERE; }
loop		{ return LOOP;}
;		{ return SEP; }
[0-9]+		{ yylval.f = atof(yytext); return NUMBER;}		
\+		{ return PLUS; }
-		{ return SUB; }
\*		{ return MULT; }
\/		{ return DIV; }
[A-Za-z]+ 	{ yylval.s = (yytext); return STRING; }
[ \t\r\n]	;
.		{ yyerror("Lexing Syntax error.\n"); } 

%%


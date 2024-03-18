%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);
%}

%%


[ \t\r\n]			;
.			{ yyerror("Lexing Syntax error.\n"); } 

%%


%{
	#include "y.tab.h"
%}

%%

[a-zA-Z]+ { yylval.s = yytext; return S; }
\n	{ return NL; }
.	return yytext[0];

%%

int yywrap() {
	return 1;
}

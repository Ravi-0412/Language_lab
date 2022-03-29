%{
	#include <stdio.h>
	#include <stdlib.h>
	extern int yyerror(char *s);
	extern int yylex();

	int isPalindrome(const char *s) {
		int len;
		for (len = 0; s[len] != '\0'; len++)
			;
		len--;
		for (int i = 0; i < len; i++, len--) {
			if (s[i] != s[len - 1])
				return 0;
		}
		return 1;
	}
%}

%token S NL
%union {
	char *s;
};

%%

STMT: S NL		{ 
    if (isPalindrome(yylval.s)) {
	return 1;
    } else {
	return 0;
    }
}
    ;

%%

int main(void) {
	printf("Enter the string: ");
	if (yyparse()) {
		printf("Palindrome\n");
	} else {
		printf("Not a palindrome\n");
	}
	return 0;
}

int yyerror(char *s) {
	printf("Invalid\n");
	exit(1);
}

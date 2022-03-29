%{

%}

%%
[01]000[01]* {printf("valid string");}
.*          {printf("invalid string");}
%%

int yywrap(){return 1;}
int main()
{
    printf("enter a string of 0 and 1: ");
    yylex();
    return 0;
}
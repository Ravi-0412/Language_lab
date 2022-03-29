%{

%}

%%
[1-9][0-9]{9}  {printf("\nvalid");}
.+ { printf("\ninvalid");}
%%

int yywrap()
{ return 1;}
int main()
{
    yylex();
    return 0;
}


%{
#include <stdio.h>
%}


%%

([0-9A-Za-z]+[0-9a-zA-Z.-_]*[0-9a-zA-Z]+@[0-9a-zA-Z]+[\-_]) ; 

[a-zA-Z0-9]+([._-]?[a-zA-Z0-9])*@[a-zA-Z0-9]+([.][a-zA-Z0-9]+)*  {printf("%s\n",yytext);}  


\n;
.  ;
[[:space:]] ;

%%


int main() {
  yylex();
  return 0;
}

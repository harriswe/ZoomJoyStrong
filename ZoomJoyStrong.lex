%{
    #include <stdio.h>
    void printLex();

%}



%%

done {printf("END"); printLex();}
\;	{printf("END_STATEMENT"); printLex();}
point {printf("POINT");printLex();}
line {printf("LINE"); printLex();}
circle {printf("CIRCLE"); printLex();}
rectangle {printf("RECTANGLE"); printLex();}
setColor {printf("SET_COLOR"); printLex();}
[0-9]+ {printf("INT"); printLex();}
[-+]?[0-9]*\.?[0-9]+ {printf("FLOAT"); printLex();}
\s ;

// I am not sure how to match anything that is not listed above.
// I went through the notes but I'm still not sure.
%%

void printLex(){
	printf("(%s)\n", yytext());

}

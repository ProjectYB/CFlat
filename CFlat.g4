grammar CFlat;
r  
    : 'hello' ID WS ;
b
    : 'return' FLOAT
    ;
ID : [a-z]+;
INT : [0-9]+;
FLOAT : INT '.' INT;
WS : [ \t\r\n]+->skip;
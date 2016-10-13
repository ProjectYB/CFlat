grammar CFlat;
runRule
    : (expr NL)*
    ;

expr
    : INCLUDE
    | DEFINE
    | Function
    ;

INCLUDE 
    : SYSTEM_CMD 'include' [ \t]* ('<'|'"') .+? ('>'|'"') 
    ;
DEFINE  
    : SYSTEM_CMD 'define' [A-Z][A-Z0-9]*? WS ID
    ;


Function 
    : TYPE WS ID '(' .*? ')' (WS|NL)*? '{' (.|NL|WS)*? '}'
    ;

TYPE : 'int'
    | 'float'
    | 'bool'
    | 'void'
    ;

NullLiteral
    :   'null'
    ;

// §3.11 Separators

LPAREN          : '(';
RPAREN          : ')';
LBRACE          : '{';
RBRACE          : '}';
LBRACK          : '[';
RBRACK          : ']';
SEMI            : ';';
COMMA           : ',';
DOT             : '.';

// §3.12 Operators

ASSIGN          : '=';
GT              : '>';
LT              : '<';
BANG            : '!';
TILDE           : '~';
QUESTION        : '?';
COLON           : ':';
EQUAL           : '==';
LE              : '<=';
GE              : '>=';
NOTEQUAL        : '!=';
AND             : '&&';
OR              : '||';
INC             : '++';
DEC             : '--';
ADD             : '+';
SUB             : '-';
MUL             : '*';
DIV             : '/';
BITAND          : '&';
BITOR           : '|';
CARET           : '^';
MOD             : '%';

ADD_ASSIGN      : '+=';
SUB_ASSIGN      : '-=';
MUL_ASSIGN      : '*=';
DIV_ASSIGN      : '/=';
AND_ASSIGN      : '&=';
OR_ASSIGN       : '|=';
XOR_ASSIGN      : '^=';
MOD_ASSIGN      : '%=';


SYSTEM_CMD  : '#' ;
ID          : [a-zA-Z0-9]+ ;
INT         : [0-9]+ ;
//str         : '"' ID+? '"' ;
FLOAT       : [0-9]+'.'[0-9]+ ;
WS          : [ \t]+ -> skip ;
NL          : [\r\n]+ -> skip ;
COMMENT     : '/*' .*? '*/' -> skip ;
LINE_COMMENT : '//' ~[\r\n]* -> skip ;
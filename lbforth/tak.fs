: 3dup dup 2over rot ;  
: -rot rot rot ;
: tak 2dup >= if 2drop exit then 3dup 1- recurse >r 3dup -rot 1- recurse >r rot 1- recurse r> r> recurse ;


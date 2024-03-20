: 3dup dup 2over rot ;

: tak ( z y x -- n )
    2dup >= if 2drop exit then
    3dup 1- recurse >r
    3dup -rot 1- recurse >r
    rot 1- recurse r> r>
    recurse ;

: num-arg ( -- n )
    next-arg 2dup or 0= throw
    s>number? 0= throw drop ;

num-arg num-arg num-arg tak . cr bye

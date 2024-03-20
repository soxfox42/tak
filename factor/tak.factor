! from https://concatenative.org/wiki/view/Tak%20function

USING:
    combinators.extras command-line generalizations
    kernel math math.parser namespaces prettyprint
    sequences ;
IN: scratchpad

! patch this manually until fixed officially
: 3tri* ( o s t  u v w  x y z  p q r -- )
    [ 6 ndip ] 2dip [ 3dip ] dip call ; inline
: 3tri@ ( r s t  u v w  x y z  quot -- )
    dup dup 3tri* ; inline

: tak ( z y x -- res )
    2dup >= [ 2drop ] [
        rot 3dup rot 3dup rot [ 1 - tak ] 3tri@ tak 
    ] if ;

command-line get [ string>number ] map first3 tak .

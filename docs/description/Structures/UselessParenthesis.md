Useless Parenthesis
Situations where parenthesis are not necessary, and may be removed.

<?php

    if ( ($condition) ) {}
    while( ($condition) ) {}
    do $a++; while ( ($condition) );
    
    switch ( ($a) ) {}
    $y = (1);
    ($y) == (1);
    
    f(($x));

    // = has precedence over == 
    ($a = $b) == $c;
    
    ($a++);
    
    // No need for parenthesis in default values
    function foo($c = ( 1 + 2) ) {}
?>


The following structures are based on if / elseif / else. Since they have more than three conditions (not withstanding the final else), it is recommended to use the switch structure, so as to make this more readable.

On the other hand, switch() structures will less than 3 elements should be expressed as a if / else structure.

Note that if condition that uses strict typing (=== or !==) can't be converted to switch() as the latter only performs == or != comparisons.

<?php

if ($a == 1) {

} elseif ($a == 2) {

} elseif ($a == 3) {

} elseif ($a == 4) {

} else {

}

// Better way to write long if/else lists
switch ($a) {
    case 1 : 
        doSomething(1);
        break 1;
    
    case 2 : 
        doSomething(2);
        break 1;

    case 3 : 
        doSomething(3);
        break 1;

    case 4 : 
        doSomething(4);
        break 1;
    
    default :
        doSomething();
        break 1;
}

?>


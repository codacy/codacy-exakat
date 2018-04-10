Dangling Array References
Always unset a referenced-variable used in a loop.

It is highly recommended to unset blind variables when they are set up as references after a loop. 

<?php

$array = array(1,2,3,4);

foreach($array as &$a) {
    $a += 1;
}
// This only unset the reference, not the value
unset($a);




// Dangling array problem
foreach($array as &$a) {
    $a += 1;
}
//$array === array(3,4,5,6);

// This does nothing (apparently)
foreach($array as $a) {}
//$array === array(3,4,5,6);

?>

When omitting this step, the next loop that will also require this variable will deal with garbage values, and produce unexpected results.

See also : `No Dangling Reference <https://github.com/dseguy/clearPHP/blob/master/rules/no-dangling-reference.md>`_.

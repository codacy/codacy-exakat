Unset In Foreach
Unset applied to the variables of a foreach loop are useless, as they are copies and not the actual value. Even if the value is a reference, unsetting it will not have effect on the original array : the only effect may be on values inside an array, or on properties inside an object.

<?php

// When unset is useless
$array = [1, 2, 3];
foreach($array as $a) {
    unset($a);
}

print_r($array); // still [1, 2, 3]

foreach($array as $b => &$a) {
    unset($a);
}

print_r($array); // still [1, 2, 3]

// When unset is useful
$array = [ [ 'c' => 1] ]; // Array in array
foreach($array as &$a) {
    unset(&$a['c']);
}

print_r($array); // now [ ['c' => null] ]

?>


Useless Check
Situation where the condition is useless. 

<?php

// Checking for type is good. 
if (is_array($array)) {
    foreach($array as $a) {
        doSomething($a);
    }
}

// Foreach on empty arrays doesn't start. Checking is useless
if (!empty($array)) {
    foreach($array as $a) {
        doSomething($a);
    }
}

?>


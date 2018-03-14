Useless Unset
Unsetting variables may not be applicable with a certain type of variables. This is the list of such cases.

<?php

function foo($a) {
    // unsetting arguments is useless
    unset($a);
    
    global $b;
    // unsetting global variable has no effect 
    unset($b);

    static $c;
    // unsetting static variable has no effect 
    unset($c);
    
    foreach($d as $e){
        // unsetting a blind variable is useless
        (unset) $e;
    }
}

?>


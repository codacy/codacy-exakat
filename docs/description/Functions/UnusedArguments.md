Those arguments are not used in the method or function. 

Unused arguments should be removed in functions : they are just dead code.

Unused argument may have to stay in methods, as the signature is actually defined in the parent class. 

<?php

// $unused is in the signature, but not used. 
function foo($unused, $b, $c) {
    return $b + $c;
}
?>


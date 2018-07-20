Switch statements should only hold one default, not more. Check the code and remove the extra default.  

PHP 7.0 won't compile a script that allows for several default cases. 

Multiple default happens often with large switch().

<?php

switch($a) {
    case 1 : 
        break;
    default : 
        break;
    case 2 : 
        break;
    default :  // This default is never reached
        break;
}

?>


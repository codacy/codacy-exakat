Wrong placement of optional parameters.

PHP parameters are optional when they defined with a default value, like this : 

<?php
    function x($arg = 1) {
        // PHP code here
    }
?>

When a function have both compulsory and optional parameters, the compulsory ones should appear first, and the optional should appear last : 

<?php
    function x($arg, $arg2 = 2) {
        // PHP code here
    }
?>

PHP will solve this problem at runtime, assign values in the same other, but will miss some of the default values and emits warnings. 

It is better to put all the optional parameters at the end of the method's signature.


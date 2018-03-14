Avoid get_class()
get_class() should be replaced with the instanceof operator to check the class of an object. 

get_class() will only compare the full namespace name of the object's class, while instanceof actually resolve the name, using the local namespace and aliases.

<?php

    use Stdclass as baseClass;
    
    function foo($arg) {
        // Slow and prone to namespace errors
        if (get_class($arg) === 'Stdclass') {
            // doSomething()
        }
    }

    function bar($arg) {
        // Faster, and uses aliases.
        if ($arg instanceof baseClass) {
            // doSomething()
        }
    }
?>


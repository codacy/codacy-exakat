The interfaces below are defined and are implemented by some classes. 
However, they are never used to enforce objects's class in the code, using instanceof or a typehint. 
As they are currently used, those interfaces may be removed without change in behavior.

<?php
    // only defined interface but never enforced
    interface i {};
    class c implements i {} 
?>

Interfaces should be used in Typehint or with the instanceof operator. 

<?php
    interface i {};
    
    function foo(i $arg) { 
        // Now, $arg is always an 'i'
    }
    
    function bar($arg) { 
        if (!($arg instanceof i)) {
            // Now, $arg is always an 'i'
        }
    }
?>


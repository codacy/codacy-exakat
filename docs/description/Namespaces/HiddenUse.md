Hidden Use Expression
The use expression for namespaces should always be at te beginning of the namespace block. 

It is where everyone expect them, and it is less confusing than having them at various levels.

<?php

// This is visible 
use A;

class B {}

// This is hidden 
use C as D;

class E extends D {
    use traitT; // This is a use for a trait

    function foo() {
        // This is a use for a closure
        return function ($a) use ($b) {}
    }
}

?>


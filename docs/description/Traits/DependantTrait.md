Traits should be autonomous. It is recommended to avoid depending on methods or properties that should be in the using class.

The following traits make usage of methods and properties, static or not, that are not defined in the trait. This means the host class must provide those methods and properties, but there is no way to enforce this. 

This may also lead to dead code : when the trait is removed, the host class have unused properties and methods.

<?php

// autonomous trait : all it needs is within the trait
trait t {
    private $p = 0;
    
    function foo() {
        return ++$this->p;
    }
}

// dependant trait : the host class needs to provide some properties or methods
trait t2 {
    function foo() {
        return ++$this->p;
    }
}

class x {
    use t2;
    
    private $p = 0;
}
?>


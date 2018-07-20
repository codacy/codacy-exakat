The same interface is implemented by a class and one of its children. 

That way, the child doesn't need to implement the interface, nor define its methods to be an instance of the interface. 

<?php

interface i { 
    function i();
}

class A implements i {
    function i() {
        return __METHOD__;
    }
}

// This implements is useless. 
class AB extends A implements i {
    // No definition for function i()
}

// Implements i is understated
class AB extends A {
    // redefinition of the i method
    function i() {
        return __METHOD__.' ';
    }
}

$x = new AB;
var_dump($x instanceof i);
// true

$x = new AC;
var_dump($x instanceof i);
// true

?>


Those properties are defined in a class, and this class doesn't have any method that makes use of them. 

While this is syntactically correct, it is unusual that defined ressources are used in a child class. It may be worth moving the definition to another class, or to move accessing methods to the class.

<?php

class foo {
    public $unused, $used;// property $unused is never used in this class
    
    function bar() {
        $this->used++; // property $used is used in this method
    }
}

class foofoo extends foo {
    function bar() {
        $this->unused++; // property $unused is used in this method, but defined in the parent class
    }
}

?>


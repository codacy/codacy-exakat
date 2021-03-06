Methods in a class should use the class, or be functions.

Methods should use $this with another method or a property, or call parent::. Static methods should call another static method, or a static property. 
Methods which are overwritten by a child class are omitted : the parent class act as a default value for the children class, and this is correct.

<?php

class foo {
    public function __construct() {
        // This method should do something locally, or be removed.
    }
}

class bar extends foo {
    private $a = 1;
    
    public function __construct() {
        // Calling parent:: is sufficient
        parent::__construct();
    }

    public function barbar() {
        // This is acting on the local object
        $this->a++;
    }

    public function barfoo($b) {
        // This has no action on the local object. It could be a function or a closure where needed
        return 3 + $b;
    }
}

?>

Note that a method using a class constant is not considered as using the local class, for this analyzer. 


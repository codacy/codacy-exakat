Properties that are not initialized in the constructor, nor at definition. 

<?php

class X {
    private $i1 = 1, $i2;
    protected $u1, $u2;
    
    function __construct() {
        $this->i2 = 1 + $this->u2;
    }
    
    function m() {
        echo $this->i1, $this->i2, $this->u1, $this->u2;
    }
}
?>

With the above class, when m() is accessed right after instantiation, there will be a missing property. 
Using default values at property definition, or setting default values in the constructor ensures that the created object is consistent. 


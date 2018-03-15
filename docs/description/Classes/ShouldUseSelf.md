Could Use self
'self' keyword refers to the current class, or any of its parents. Using it is just as fast as the full classname, it is as readable and it is will not be changed upon class or namespace change.

It is also routinely used in traits : there, 'self' represents the class in which the trait is used, or the trait itself. 

<?php

class x {
    const FOO = 1;
    
    public function bar() {
        return self::FOO;
// same as return x::FOO;
    }
}

?>

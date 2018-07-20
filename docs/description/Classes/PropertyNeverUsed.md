Properties that are never used. They are defined, but never actually used.

<?php

class foo {
    public $usedProperty = 1;

    // Never used anywhere
    public $unusedProperty = 2;
    
    function bar() {
        // Used internally
        ++$this->usedProperty;
    }
}

class foo2  extends foo {
    function bar2() {
        // Used in child class
        ++$this->usedProperty;
    }
}

// Used externally
++$this->usedProperty;

?>


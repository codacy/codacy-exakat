$this Belongs To Classes Or Traits
$this variable represents only the current object. 

It is a pseudo-variable, and should be used within class's or trait's methods (except for static) and not outside.

PHP 7.1 is stricter and check for $this at several positions. Some are found by static analysis, some are dynamic analysis.

<?php

// as an argument
function foo($this) {
    // Using global
    global $this;
    // Using static (not a property)
    static $this;
    
    // Can't unset it
    unset($this);
    
    try {
        // inside a foreach
        foreach($a as $this) {  }
        foreach($a as $this => $b) {  }
        foreach($a as $b => $this) {  }
    } catch (Exception $this) {
        // inside a catch
    }
    
    // with Variable Variable
    $a = this;
    $$a = 42;
}

class foo {
    function bar() {
        // Using references
        $a =& $this;
        $a = 42;
        
        // Using extract(), parse_str() or similar functions
        extract([this => 42]);  // throw new Error(Cannot re-assign $this)
        var_dump($this);
    }

    static function __call($name, $args) {
        // Using __call
        var_dump($this); // prints object(C)#1 (0) {}, php-7.0 printed NULL
        $this->test();   // prints ops
    }

}
?>


Must Return Methods
The following methods are expected to return a value that will be used later. Without return, they are useless.

Methods that must return are : __get(), __isset(), __sleep(), __toString(), __set_state(), __invoke(), __debugInfo().
Methods that may not return, but are often expected to : __call(), __callStatic().


<?php

class foo {
    public function __isset($a) {
        // returning something useful
        return isset($this->$var[$a]);
    }

    public function __get($a) {
        $this->$a++;
        // not returning... 
    }

    public function __call($name, $args) {
        $this->$name(...$args);
        // not returning anything, but that's OK
    }

}
?>

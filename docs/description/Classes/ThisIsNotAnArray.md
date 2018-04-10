$this Is Not An Array
`$this` variable represents the current object and it is not an array, unless the class (or its parents) has the ArrayAccess interface.

<?php

// $this is an array
class Foo extends ArrayAccess {
    function bar() {
        ++$this[3];
    }
}

// $this is not an array
class Foo2 {
    function bar() {
        ++$this[3];
    }
}

?>

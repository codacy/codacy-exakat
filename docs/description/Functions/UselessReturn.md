The spotted functions or methods have a return statement, but this statement is useless. This is the case for constructor and destructors, whose return value are ignored or inaccessible.

When return is void, and the last element in a function, it is also useless.

<?php

class foo {
    function __construct() {
        // return is not used by PHP
        return 2;
    }
}

function bar(&$a) {
    $a++;
    // The last return, when empty, is useless
    return;
}

?>

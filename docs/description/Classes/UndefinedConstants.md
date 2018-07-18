Class constants that are used, but never defined. This should yield a fatal error upon execution, but no feedback at compile level.

<?php

class foo {
    const A = 1;
    define('B', 2);
}

// here, C is not defined in the code and is reported
echo foo::A.foo::B.foo::C;

?>

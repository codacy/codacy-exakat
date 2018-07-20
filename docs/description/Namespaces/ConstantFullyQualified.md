Constants defined with their namespace.

When defining constants with define() function, it is possible to include the actual namespace : 

<?php

define('a\b\c', 1); 

?>

However, the name should be fully qualified without the initial \. Here, \a\b\c constant will never be accessible as a namespace constant, though it will be accessible via the constant() function.

Also, the namespace will be absolute, and not a relative namespace of the current one. 
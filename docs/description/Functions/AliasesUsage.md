PHP manual recommends to avoid function aliases.

Some functions have several names, and both may be used the same way. However, one of the names is the main name, and the others are aliases. Aliases may be removed or change or dropped in the future. Even if this is not forecast, it is good practice to use the main name, instead of the aliases. 

<?php

// official way to count an array
$n = count($array);

// official way to count an array
$n = sizeof($array);

?>

Aliases are compiled in PHP, and do not provide any performances over the normal function. 

Aliases are more likely to be removed later, but they have been around for a long time.

See documentation : [List of function aliases](http://php.net/manual/en/aliases.php).

Should Typecast
When typecasting, it is better to use the casting operator, such as (int) or (bool).

Functions such as intval() or settype() are always slower.

<?php

$int = intval($_GET['x']);

// Quicker version
$int = (int) $_GET['x'];

?>

This is a micro-optimisation, although such conversion may be use multiple time, leading to a larger performance increase.  

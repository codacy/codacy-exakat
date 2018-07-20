Some PHP native functions, such as count(), strlen(), or abs() only returns positive or null values. 

When comparing them to 0, the following expressions are always true and should be avoided. 

<?php

$a = [1, 2, 3];

var_dump(count($a) >= 0);
var_dump(count($a) < 0); 

?>

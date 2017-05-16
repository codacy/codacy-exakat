It is possible to emulate a if/then structure by using the operators 'and' and 'or'. Since optimizations will be applied to them : 
when the left operand of 'and' is false, the right one is not executed, as its result is useless; 
when the left operand of 'or' is true, the right one is not executed, as its result is useless; 

However, such structures are confusing. It is easy to misread them as conditions, and ignore an important logic step. 

<?php

// Either connect, or die
mysql_connect('localhost', $user, $pass) or die();

// Defines a constant if not found. 
defined('SOME_CONSTANT') and define('SOME_CONSTANT', 1);

?>

It is recommended to use a real 'if then' structures, to make the condition readable.

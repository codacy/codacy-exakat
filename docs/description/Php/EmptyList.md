Empty list() are not allowed anymore in PHP 7. There must be at least one variable in the list call.

<?php

//Not accepted since PHP 7.0
list() = array(1,2,3);

//Still valid PHP code
list(,$x) = array(1,2,3);

?>


This happens when a container (variable, property, array index) is assigned with values twice in a row. One of them is probably a debug instruction, that was forgotten. 

<?php

// Normal assignation
$a = 1;

// Double assignation
$b = 2;
$b = 3;

?>

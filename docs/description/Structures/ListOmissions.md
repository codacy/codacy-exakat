list() May Omit Variables
Simply omit any unused variable in a list() call. 

list() is the only PHP function that accepts to have omitted arguments. If the following code makes no usage of a listed variable, just omit it. 

<?php
    list ($a, , $b) = array(1, 2, 3);
?>

$b will be 3, and the 2 value will be omitted. This is cleaner, and save some memory.

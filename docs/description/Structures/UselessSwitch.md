Useless Switch
This switch has only one case. It may very well be replaced by a ifthen structure.

<?php
switch($a) {
    case 1:
        doSomething();
        break;
}

// Same as 

if ($a == 1) {
    doSomething();
}
?>



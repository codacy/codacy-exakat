If With Same Conditions
Successive If / then structures that have the same condition may be either merged or have one of the condition changed. 

<?php

if ($a == 1) {
    doSomething();
}

if ($a == 1) {
    doSomethingElse();
}

// May be replaced by 
if ($a == 1) {
    doSomething();
    doSomethingElse();
}

?>

Note that if the values used in the condition have been modified in the first if/then structure, the two distinct conditions may be needed. 

<?php

// May not be merged
if ($a == 1) {
    // Check that this is really the situation
    $a = checkSomething();
}

if ($a == 1) {
    doSomethingElse();
}

?>


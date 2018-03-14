Drop Else After Return
Avoid else clause when the then clause returns, but not the else. 

The else may simply be set in the main sequence of the function. 

This is also true if else has a return, and then not : simply reverse the condition. 

<?php

// drop the else
if ($a) {
    return $a;
} else {
    doSomething();
}

// drop the then
if ($b) {
    doSomething();
} else {
    return $a;
}

// return in else and then
if ($a3) {
    return $a;
} else {
    $b = doSomething();
    return $b;
}

?>
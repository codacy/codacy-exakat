Whenever possible, use a positive condition. 

Positive conditions are easier to understand, and lead to less understanding problems.
Negative conditions are not reported when else is not present. 

<?php

// This is a positive condition
if ($a == 'b') {
    doSomething();
} else {
    doSomethingElse();
}

if (!empty($a)) {
    doSomething();
} else {
    doSomethingElse();
}

// This is a negative condition
if ($a == 'b') {
    doSomethingElse();
} else {
    doSomething();
}

// No need to force $a == 'b' with empty else
if ($a != 'b') {
    doSomethingElse();
} 


?>

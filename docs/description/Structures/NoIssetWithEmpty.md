Empty() actually does the job of Isset() too. 

From the manual : No warning is generated if the variable does not exist. That means empty() is essentially the concise equivalent to !isset($var) || $var == false.

<?php


// Enough tests
if (i!empty($a)) {
    doSomething();
}

// Too many tests
if (isset($a) && !empty($a)) {
    doSomething();
}

?>


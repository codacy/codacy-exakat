Wrong Number Of Arguments
Those functioncalls are made with too many or too few arguments. 

When the number arguments is wrong for native functions, PHP emits a warning. 
When the number arguments is too small for custom functions, PHP raises an exception. 
When the number arguments is too hight for custom functions, PHP ignores the arguments. Such arguments should be handled with the variadic operator, or with func_get_args() family of functions.

<?php

echo strtoupper('This function is', 'ignoring arguments');
//Warning: strtoupper() expects exactly 1 parameter, 2 given in Command line code on line 1

echo strtoupper();
//Warning: strtoupper() expects exactly 1 parameter, 0 given in Command line code on line 1

function foo($argument) {}
echo foo();
//Fatal error: Uncaught ArgumentCountError: Too few arguments to function foo(), 0 passed in /Users/famille/Desktop/analyzeG3/test.php on line 10 and exactly 1 expected in /Users/famille/Desktop/analyzeG3/test.php:3

echo foo('This function is', 'ignoring arguments');

?>

It is recommended to check the signature of the methods, and fix the arguments. 